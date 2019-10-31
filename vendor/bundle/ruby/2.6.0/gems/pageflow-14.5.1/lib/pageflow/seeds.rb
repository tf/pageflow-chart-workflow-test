module Pageflow
  # Provides a DSL for seeding the database with Pageflow
  # models. Include this module in your `db/seeds.rb` file.
  #
  # @example
  #
  #   # db/seeds.rb
  #   include Pageflow::Seeds
  #
  #   default_password 'supersecret'
  #
  #   account(name: 'example') do |account|
  #     user(account: account,
  #          email: 'admin@example.com',
  #          role: 'admin',
  #          first_name: 'John',
  #          last_name: 'Doe')
  #   end
  module Seeds
    DEFAULT_USER_PASSWORD = '!Pass123'

    # Create an {Account} with a default {Theming} if no account by
    # that name exists.
    #
    # @param [Hash] attributes  attributes to override defaults
    # @option attributes [String] :name  required
    # @yield [account] a block to be called before the account is saved
    # @return [Account] newly created account
    def account(attributes, &block)
      Account.find_or_create_by!(attributes.slice(:name)) do |account|
        account.attributes = attributes.reverse_merge(name: 'Pageflow')

        build_default_theming_for(account)

        say_creating_account(account)
        yield(account) if block_given?
      end
    end

    # Build a default {Theming} for an {Account}. To be used inside a
    # block passed to {#account}.
    #
    # @example
    #
    #   account(name: 'example') do |account|
    #     build_default_theming_for(account) do |theming|
    #       theming.theme_name = 'mdr'
    #     end
    #   end
    #
    # @param [Account] account  the account to build a default themeing for
    # @param [Hash] attributes  further attributes to override defaults
    # @yield [theming] a block which is passed the newly built theming
    # @return [Theming] newly built theming
    def build_default_theming_for(account, attributes = {}, &block)
      default_attributes = {
        theme_name: Pageflow.config_for(account).themes.names.first,

        imprint_link_label: 'Impressum',
        imprint_link_url: 'http://example.com/impressum.html',
        copyright_link_label: '&copy; Pageflow 2014',
        copyright_link_url: 'http://www.example.com/copyright.html'
      }

      account.build_default_theming(default_attributes.merge(attributes), &block)
    end

    # Create a {User} if none with the given email exists yet.
    #
    # @param [Hash] attributes  attributes to override defaults
    # @option attributes [String] :email  required
    # @yield [user] a block to be called before the user is saved
    # @return [User] newly created user
    def user(attributes, &block)
      default_attributes = {
        password: default_user_password,
        first_name: 'Elliot',
        last_name: 'Example'
      }

      User.find_or_create_by!(attributes.slice(:email)) do |user|
        user.attributes = default_attributes.merge(attributes)
        user.password_confirmation = user.password

        say_creating_user(user)
        yield(user) if block_given?
      end
    end

    # Set the default password to use for created users. Call before
    # using {#user}.
    #
    # @param [String] password
    def default_user_password(password = nil)
      if password
        @default_user_password = password
      else
        @default_user_password || DEFAULT_USER_PASSWORD
      end
    end

    # Create a sample {Entry} with some chapter and pages if no
    # entry with that title exists in the given account.
    #
    # @param [Hash] attributes  attributes to override defaults
    # @option attributes [Account] :account  required
    # @option attributes [title] :title  required
    # @yield [entry] a block to be called before the entry is saved
    # @return [Entry] newly created entry
    def sample_entry(attributes)
      entry = Entry.where(attributes.slice(:account, :title)).first

      if entry.nil?
        entry = Entry.create!(attributes) do |created_entry|
          created_entry.theming = attributes.fetch(:account).default_theming

          say_creating_entry(created_entry)
          yield(created_entry) if block_given?
        end

        storyline = entry.draft.storylines.first

        chapter = storyline.chapters.create!(title: 'Chapter 1', position: 0)
        chapter.pages.create!(template: 'background_image')
        chapter.pages.create!(template: 'background_image')

        chapter = storyline.chapters.create!(title: 'Chapter 2', position: 1)
        chapter.pages.create!(template: 'video')
      end

      entry
    end

    # Create a {Membership} for the given user and entity.
    # Create a {Membership} for the corresponding account first if a {Membership} on an entry is to
    # be created and no {Membership} on the entry's account exists yet.
    #
    # @param [Hash] attributes  attributes to override defaults
    # @option attributes [User] :user  required
    # @option attributes [Entity] :entity  required
    # :entry and :account are lower-priority aliases for :entity
    # @return [Membership] newly created membership
    def membership(attributes)
      if (attributes[:entry].present? && attributes[:entity].present?) ||
         (attributes[:account].present? && attributes[:entity].present?)
        say_attribute_precedence(':entity', ':entry and :account')
      end
      unless attributes[:entity].present?
        entry_or_account_attributes_specified attributes
      end

      if attributes[:entity].is_a?(Entry) || attributes[:entry].present?
        entry = attributes[:entity] || attributes[:entry]
        unless attributes[:user].accounts.include?(entry.account)
          Membership.find_or_create_by!(entity: entry.account,
                                        user: attributes[:user],
                                        role: :member) do |membership|
            say_creating_membership(membership)
          end
        end
      end

      Membership.find_or_create_by!(attributes) do |membership|
        say_creating_membership(membership)
      end
    end

    private

    def say_creating_account(account)
      say("\n-- creating account '#{account.name}'\n\n")
    end

    def say_creating_user(user)
      say(<<-END)

   user with login:

   email:     #{user.email}
   password:  #{user.password}

END
    end

    def say_creating_entry(entry)
      say("   sample entry '#{entry.title}'\n")
    end

    def say_creating_membership(membership)
      say("   -- '#{membership.role}' membership for user '#{membership.user.email}' on " +
          "#{membership.entity_type == 'Pageflow::Entry' ? 'entry' : 'account'} " +
          %|'#{if membership.entity_type == "Pageflow::Entry"
                 membership.entity.title
               else
                 membership.entity.name
               end}'\n|)
    end

    def say_attribute_precedence(subject, object)
      say("   #{subject} attribute precedes #{object}")
    end

    def say(text)
      puts(text) unless Rails.env.test?
    end

    def entry_or_account_attributes_specified(attributes)
      if attributes[:entry].present? || attributes[:account].present?
        attributes[:entity] = attributes[:entry]
        if attributes[:account].present?
          say_attribute_precedence(':entry', ':account')
        end
      else
        attributes[:entity] = attributes[:account]
      end
    end
  end
end

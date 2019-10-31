FactoryBot.define do
  factory :account, class: Pageflow::Account do
    name { 'Account Name' }

    after(:build) do |account|
      account.default_theming ||= build(:theming, account: account)
    end

    transient do
      with_member { nil }
      with_previewer { nil }
      with_editor { nil }
      with_publisher { nil }
      with_manager { nil }

      with_feature { nil }
    end

    after(:create) do |account, evaluator|
      create(:membership,
             entity: account,
             user: evaluator.with_member,
             role: :member) if evaluator.with_member
      create(:membership,
             entity: account,
             user: evaluator.with_previewer,
             role: :previewer) if evaluator.with_previewer
      create(:membership,
             entity: account,
             user: evaluator.with_editor,
             role: :editor) if evaluator.with_editor
      create(:membership,
             entity: account,
             user: evaluator.with_publisher,
             role: :publisher) if evaluator.with_publisher
      create(:membership,
             entity: account,
             user: evaluator.with_manager,
             role: :manager) if evaluator.with_manager
    end

    after(:build) do |entry, evaluator|
      entry.features_configuration =
        entry.features_configuration.merge(evaluator.with_feature => true)
    end
  end
end

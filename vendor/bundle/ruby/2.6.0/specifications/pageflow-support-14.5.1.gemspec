# -*- encoding: utf-8 -*-
# stub: pageflow-support 14.5.1 ruby .

Gem::Specification.new do |s|
  s.name = "pageflow-support".freeze
  s.version = "14.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = [".".freeze]
  s.authors = ["Codevise Solutions Ltd".freeze]
  s.date = "2019-10-31"
  s.email = ["info@codevise.de".freeze]
  s.homepage = "https://pageflow.io".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Spec support for Pageflow extensions.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pageflow>.freeze, ["= 14.5.1"])
      s.add_runtime_dependency(%q<mysql2>.freeze, ["~> 0.5.2"])
      s.add_runtime_dependency(%q<domino>.freeze, ["~> 0.7.0"])
      s.add_runtime_dependency(%q<factory_bot_rails>.freeze, ["~> 4.8"])
      s.add_runtime_dependency(%q<listen>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<bootsnap>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<resque>.freeze, ["~> 1.25"])
      s.add_runtime_dependency(%q<resque-scheduler>.freeze, ["~> 2.5"])
      s.add_runtime_dependency(%q<ar_after_transaction>.freeze, ["~> 0.5.0"])
      s.add_runtime_dependency(%q<redis>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<redis-namespace>.freeze, ["~> 1.5"])
    else
      s.add_dependency(%q<pageflow>.freeze, ["= 14.5.1"])
      s.add_dependency(%q<mysql2>.freeze, ["~> 0.5.2"])
      s.add_dependency(%q<domino>.freeze, ["~> 0.7.0"])
      s.add_dependency(%q<factory_bot_rails>.freeze, ["~> 4.8"])
      s.add_dependency(%q<listen>.freeze, ["~> 3.0"])
      s.add_dependency(%q<bootsnap>.freeze, ["~> 1.0"])
      s.add_dependency(%q<resque>.freeze, ["~> 1.25"])
      s.add_dependency(%q<resque-scheduler>.freeze, ["~> 2.5"])
      s.add_dependency(%q<ar_after_transaction>.freeze, ["~> 0.5.0"])
      s.add_dependency(%q<redis>.freeze, ["~> 3.0"])
      s.add_dependency(%q<redis-namespace>.freeze, ["~> 1.5"])
    end
  else
    s.add_dependency(%q<pageflow>.freeze, ["= 14.5.1"])
    s.add_dependency(%q<mysql2>.freeze, ["~> 0.5.2"])
    s.add_dependency(%q<domino>.freeze, ["~> 0.7.0"])
    s.add_dependency(%q<factory_bot_rails>.freeze, ["~> 4.8"])
    s.add_dependency(%q<listen>.freeze, ["~> 3.0"])
    s.add_dependency(%q<bootsnap>.freeze, ["~> 1.0"])
    s.add_dependency(%q<resque>.freeze, ["~> 1.25"])
    s.add_dependency(%q<resque-scheduler>.freeze, ["~> 2.5"])
    s.add_dependency(%q<ar_after_transaction>.freeze, ["~> 0.5.0"])
    s.add_dependency(%q<redis>.freeze, ["~> 3.0"])
    s.add_dependency(%q<redis-namespace>.freeze, ["~> 1.5"])
  end
end

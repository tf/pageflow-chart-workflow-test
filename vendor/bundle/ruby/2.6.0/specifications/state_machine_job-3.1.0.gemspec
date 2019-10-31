# -*- encoding: utf-8 -*-
# stub: state_machine_job 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "state_machine_job".freeze
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Codevise Solutions Ltd.".freeze]
  s.date = "2019-07-22"
  s.description = "State Machine + Active Job".freeze
  s.email = ["info@codevise.de".freeze]
  s.homepage = "http://github.com/codevise/state_machine_job".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Trigger jobs via Rails state machines.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<state_machines-activemodel>.freeze, ["~> 0.5.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, ["< 13"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.7"])
      s.add_development_dependency(%q<activesupport>.freeze, ["< 6"])
      s.add_development_dependency(%q<activemodel>.freeze, ["< 6"])
      s.add_development_dependency(%q<semmy>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
      s.add_runtime_dependency(%q<activejob>.freeze, [">= 4.2", "< 6"])
      s.add_runtime_dependency(%q<state_machines>.freeze, ["~> 0.5.0"])
    else
      s.add_dependency(%q<state_machines-activemodel>.freeze, ["~> 0.5.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, ["< 13"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.7"])
      s.add_dependency(%q<activesupport>.freeze, ["< 6"])
      s.add_dependency(%q<activemodel>.freeze, ["< 6"])
      s.add_dependency(%q<semmy>.freeze, ["~> 1.0"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
      s.add_dependency(%q<activejob>.freeze, [">= 4.2", "< 6"])
      s.add_dependency(%q<state_machines>.freeze, ["~> 0.5.0"])
    end
  else
    s.add_dependency(%q<state_machines-activemodel>.freeze, ["~> 0.5.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, ["< 13"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.7"])
    s.add_dependency(%q<activesupport>.freeze, ["< 6"])
    s.add_dependency(%q<activemodel>.freeze, ["< 6"])
    s.add_dependency(%q<semmy>.freeze, ["~> 1.0"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.9.1"])
    s.add_dependency(%q<activejob>.freeze, [">= 4.2", "< 6"])
    s.add_dependency(%q<state_machines>.freeze, ["~> 0.5.0"])
  end
end

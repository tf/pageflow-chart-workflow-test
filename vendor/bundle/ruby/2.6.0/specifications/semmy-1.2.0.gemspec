# -*- encoding: utf-8 -*-
# stub: semmy 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "semmy".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tim Fischbach".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-01-24"
  s.email = ["mail@timfischbach.de".freeze]
  s.homepage = "https://github.com/tf/semmy".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Rake tasks for a semantic versioning of gems".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<git>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<unindent>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<rainbow>.freeze, ["~> 2.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 11.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.42.0"])
    else
      s.add_dependency(%q<git>.freeze, ["~> 1.3"])
      s.add_dependency(%q<unindent>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rainbow>.freeze, ["~> 2.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 11.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.42.0"])
    end
  else
    s.add_dependency(%q<git>.freeze, ["~> 1.3"])
    s.add_dependency(%q<unindent>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rainbow>.freeze, ["~> 2.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 11.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.42.0"])
  end
end

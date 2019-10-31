# -*- encoding: utf-8 -*-
# stub: pageflow-public-i18n 1.18.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pageflow-public-i18n".freeze
  s.version = "1.18.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Codevise Solutions Ltd.".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-07-15"
  s.email = ["info@codevise.de".freeze]
  s.homepage = "http://github.com/codevise/pageflow-public-i18n".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Shared translations for Pageflow plugins.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<localeapp>.freeze, ["~> 2.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<localeapp>.freeze, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<localeapp>.freeze, ["~> 2.0"])
  end
end

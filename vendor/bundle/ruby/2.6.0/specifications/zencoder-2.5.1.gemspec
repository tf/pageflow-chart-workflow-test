# -*- encoding: utf-8 -*-
# stub: zencoder 2.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "zencoder".freeze
  s.version = "2.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nathan Sutton".freeze, "Brandon Arbini".freeze]
  s.date = "2014-08-01"
  s.description = "Zencoder <http://zencoder.com> integration library.".freeze
  s.email = "info@zencoder.com".freeze
  s.homepage = "http://github.com/zencoder/zencoder-rb".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Zencoder <http://zencoder.com> integration library.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>.freeze, [">= 0"])
    else
      s.add_dependency(%q<multi_json>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<multi_json>.freeze, [">= 0"])
  end
end

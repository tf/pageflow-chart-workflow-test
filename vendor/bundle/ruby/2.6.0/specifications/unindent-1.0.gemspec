# -*- encoding: utf-8 -*-
# stub: unindent 1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "unindent".freeze
  s.version = "1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["mynyml".freeze]
  s.date = "2011-09-30"
  s.description = "Ruby method to unindent strings. Useful for multiline strings embeded in already indented code.".freeze
  s.email = "mynyml@gmail.com".freeze
  s.homepage = "http://github.com/mynyml/unindent".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Ruby method to unindent strings.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<nanotest>.freeze, [">= 0"])
    else
      s.add_dependency(%q<nanotest>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<nanotest>.freeze, [">= 0"])
  end
end

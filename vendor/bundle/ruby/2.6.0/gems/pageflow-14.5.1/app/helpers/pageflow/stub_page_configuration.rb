module Pageflow
  class StubPageConfiguration
    attr_reader :template

    def initialize(template)
      @template = template
    end

    def method_missing(name, *args)
      template.tag(:span, :data => {:property => name})
    end
  end
end

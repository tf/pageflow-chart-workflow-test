module Pageflow
  module MediaQueryHelper
    def media_query(condition, &block)
      content = capture(&block)

      if condition == :default
        content
      else
        "@media screen and (#{condition}) {\n#{content}}".html_safe
      end
    end
  end
end

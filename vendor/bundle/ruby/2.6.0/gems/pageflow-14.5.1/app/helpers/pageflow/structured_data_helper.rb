module Pageflow
  # @api private
  module StructuredDataHelper
    include RenderJsonHelper
    include SocialShareHelper
    include MetaTagsHelper

    def structured_data_for_entry(entry)
      return '' unless Pageflow.config_for(entry).features.enabled?('structured_data')

      content_tag(:script, type: 'application/ld+json') do
        render_json_partial('pageflow/structured_data/entry',
                            entry: entry,
                            meta_data: meta_tags_data_for_entry(entry))
      end
    end

    def structured_data_normalize_protocol(url)
      url.gsub(%r{^//}, 'https://')
    end
  end
end

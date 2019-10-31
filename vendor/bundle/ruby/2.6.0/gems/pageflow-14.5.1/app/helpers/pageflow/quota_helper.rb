module Pageflow
  module QuotaHelper
    def quota_state_description(name, account)
      description = Pageflow.config.quotas.get(name, account).state_description

      if description
        content_tag(:p, description, class: 'quota_state_description')
      end
    end
  end
end

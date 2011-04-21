
require 'active_support'
require 'active_record'
require 'date_filter/extensions'

module DateFilter
end

ActiveSupport.on_load(:active_record) do
  include DateFilter::Extensions
end


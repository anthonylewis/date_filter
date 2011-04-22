
require 'active_support'
require 'active_record'
require 'date_filter/base'

module DateFilter
end

ActiveSupport.on_load(:active_record) do
  include DateFilter::Base
end


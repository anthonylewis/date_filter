
require 'active_record'
require 'date_filter/base'

ActiveRecord::Base.class_eval { include DateFilter::Base }


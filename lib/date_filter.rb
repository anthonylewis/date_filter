
require 'active_record'
require File.expand_path('../date_filter/base', __FILE__)

ActiveRecord::Base.class_eval { include DateFilter::Base }


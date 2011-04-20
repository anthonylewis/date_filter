module DateFilter
  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def has_date_filter
      send :include, InstanceMethods
    end

    def newest
      order('created_at DESC').first
    end

    def oldest
      order('created_at ASC').first
    end
  end
end

ActiveSupport.on_load(:active_record) do
  include DateFilter
end


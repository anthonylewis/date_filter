
module DateFilter
  module Base
    def self.included(base)
      base.send :extend, ClassMethods
    end

    module ClassMethods
      def newest
        order('created_at DESC').first
      end

      def oldest
        order('created_at ASC').first
      end
    end
  end
end


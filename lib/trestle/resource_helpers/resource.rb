module Trestle
  module ResourceHelpers
    module Resource
      extend ActiveSupport::Concern

      included do
        prepend Collection

        singleton_class.send(:prepend, Collection)
      end

      module Collection
        def resource_description
          adapter.resource_description if resource_described?
        end
      end

      module ClassMethods
        def resource_described?
          adapter.respond_to?(:resource_description)
        end
      end
    end
  end
end

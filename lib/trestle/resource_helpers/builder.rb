module Trestle
  module ResourceHelpers
    module Builder
      def resource_description
        admin.define_adapter_method(:resource_description) do
          # noop
        end
      end
    end
  end
end

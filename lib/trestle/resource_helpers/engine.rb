module Trestle
  module ResourceHelpers
    class Engine < Rails::Engine
      config.assets.precompile << 'trestle/resource_description.css'

      # config.to_prepare do
      #  Trestle::ResourceController.send(:include, Trestle::ResourceHelpers::ControllerConcern)
      # end

      initializer :extensions do
        Trestle::Resource.send(:include, Trestle::ResourceHelpers::Resource)
        Trestle::Resource::Builder.send(:include, Trestle::ResourceHelpers::Builder)
      end
    end
  end
end

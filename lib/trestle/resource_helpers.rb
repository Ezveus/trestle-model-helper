require_relative 'resource_helpers/version'

require 'trestle'

module Trestle
  module ResourceHelpers

    require_relative "resource_helpers/builder"
    require_relative "resource_helpers/resource"

  end
end

require_relative 'resource_helpers/engine' if defined?(Rails)

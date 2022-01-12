Trestle.configure do |config|
  config.hook("stylesheets") do
    stylesheet_link_tag "trestle/resource_description"
  end

  config.hook("resource.index.header", if: -> { admin.resource_described? }) do
    render "trestle/resource_helpers/resource_description"
  end
end

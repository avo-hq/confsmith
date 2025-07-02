module Confsmith
  class Engine < ::Rails::Engine
    isolate_namespace Confsmith

    # Add our own importmap config to the main app
    initializer "confsmith.importmap", before: "importmap" do |app|
      if Rails.application.respond_to?(:importmap)
        app.config.importmap.paths << Engine.root.join("config/importmap.rb")
      end
    end

    # removed after we added bundling to the engine
    # Add our the javascript directory to the assets path
    initializer "confsmith.assets.precompile" do |app|
      if Rails.application.config.respond_to?(:assets)
        app.config.assets.paths << Engine.root.join("app/javascript/").to_s
        app.config.assets.paths << Engine.root.join("vendor/javascript/").to_s
      end
    end
  end
end

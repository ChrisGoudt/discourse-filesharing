# frozen_string_literal: true

module ::DiscourseFilesharing
  class Engine < ::Rails::Engine
    engine_name PLUGIN_NAME
    isolate_namespace DiscourseFilesharing
  end
end

DiscourseFilesharing::Engine.routes.draw do
  get "/health" => "media#health"
end

Discourse::Application.routes.prepend do
  # Serve the Ember SPA for the /media entry point so direct navigation works
  # without conflicting with backend API endpoints (like /media/health).
  get "/media" => "static#index"
end

Discourse::Application.routes.append do
  mount ::DiscourseFilesharing::Engine, at: "/media"
end

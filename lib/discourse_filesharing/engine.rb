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

Discourse::Application.routes.append do
  mount ::DiscourseFilesharing::Engine, at: "/media"
end

# frozen_string_literal: true

# name: discourse-filesharing
# about: File and media sharing plugin skeleton for Discourse
# version: 0.1
# authors: OpenAI Assistant
# url: https://github.com

enabled_site_setting :media_enabled if respond_to?(:enabled_site_setting)

module ::DiscourseFilesharing
  PLUGIN_NAME = "discourse-filesharing"
end

require_relative "lib/discourse_filesharing/engine"

after_initialize do
  # Plugin bootstrapped. Additional initialization will be added in later phases.
end

# frozen_string_literal: true

module DiscourseFilesharing
  class MediaController < ::ApplicationController
    skip_before_action :check_xhr, only: [:health]
    skip_before_action :redirect_to_login_if_required, only: [:health]

    def health
      render json: { status: "ok", plugin: DiscourseFilesharing::PLUGIN_NAME }
    end
  end
end

# frozen_string_literal: true

# name: discourse-filesharing
# about: Basic filesharing plugin for Heartbeat Pleasure
# version: 0.0.1
# authors: Chris / Heartbeat Pleasure
# url: https://test.heartbeatpleasure.com

after_initialize do
  # Dit blok wordt uitgevoerd nadat Discourse volledig is opgestart.
  #
  # Hier gaan we later stap voor stap:
  # - settings definiëren
  # - permissies / policies koppelen
  # - routes & controllers toevoegen voor uploads/downloads
  # - UI-koppelingen maken (bijv. knop in topics/categories)
end

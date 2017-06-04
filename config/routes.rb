# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html

  # This mounts Archangel's routes at the root of your application. If you
  # would like to change where the engine is mounted, change the :at option to
  # reflect your needs.
  mount Archangel::Engine, at: "/"
end

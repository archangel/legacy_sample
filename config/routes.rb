Rails.application.routes.draw do
  # This line mounts Archangel's routes at the root of your application. If you
  # would like to change where this engine is mounted, simply change the :at
  # option to reflect your needs.
  mount Archangel::Engine, at: "/"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

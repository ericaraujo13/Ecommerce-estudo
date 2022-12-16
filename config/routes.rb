Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  mount Avo::Engine, at: Avo.configuration.root_path

end

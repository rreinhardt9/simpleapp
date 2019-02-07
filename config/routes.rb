Rails.application.routes.draw do
  resources :simple_widgets
  root to: "simple_widgets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

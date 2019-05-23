Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:"cocktails#index"
  resources :doses, only: %i[destroy]

  resources :cocktails, only: %i[index show new create destroy] do
    resources :doses, only: %i[new create]
  end
end

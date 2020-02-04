Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :hobbies, only: [:index]
  resources :cats, only: [:index, :create]
  resources :cathobbies, only: [:index]
end

Rails.application.routes.draw do
  resources :memberships
  resources :organisations
  resources :gun_lisences
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

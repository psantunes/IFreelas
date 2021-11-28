Rails.application.routes.draw do
  get 'home/index'
  devise_for :clients
  devise_for :professionals
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'

  get '/home', to: 'home#index'
  get '/search', to: 'search#index'

end

Rails.application.routes.draw do
  get 'home/index'
  devise_for :clients, controllers: { registrations: 'registrations' }
  devise_for :professionals, controllers: { registrations: 'registrations' }
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'

  get '/home', to: 'home#index'
  get '/search', to: 'search#index'

end

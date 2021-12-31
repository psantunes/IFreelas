# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :clients, controllers: { registrations: 'registrations' }
  devise_for :professionals, controllers: { registrations: 'registrations' }
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'
  get 'home/index'
  get 'search', to: 'search#index'
  get 'freelancer/:id', to: 'freelancers#show', as: 'freelancers'
end

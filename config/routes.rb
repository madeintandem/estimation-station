# frozen_string_literal: true

# Routes
Rails.application.routes.draw do
  resources :statuses
  root to: 'rooms#index'
  devise_for :users
  resources :rooms
  resources :tickets
  resources :votes
  resources :statuses
end

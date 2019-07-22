# frozen_string_literal: true

# Routes
Rails.application.routes.draw do
  root to: 'rooms#index'
  devise_for :users
  resources :rooms
end

# frozen_string_literal: true

Rails.application.routes.draw do
  resources :photos
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'pages#landing'
  get 'pages/about'
end

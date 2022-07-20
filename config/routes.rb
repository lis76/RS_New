# frozen_string_literal: true

Rails.application.routes.draw do
  resources :photos
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'pages#landing'
  get 'pages/about'
  get '/profiles/:id' => 'profiles#show', as: 'profile'
  get '/profiles/:id/subscribe' => 'profiles#subscribe', as: 'subscribe_profile'
  get '/profiles/:id/unsubscribe' => 'profiles#unsubscribe', as: 'unsubscribe_profile'
end

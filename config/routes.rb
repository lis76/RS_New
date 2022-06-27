# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#landing'
  get 'pages/about'
end

# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end
    resources :reviews, only: [ :update, :show, :delete, :edit ]
end

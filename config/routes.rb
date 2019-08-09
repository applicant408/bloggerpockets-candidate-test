# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts, only: [:index, :show] do
    resources :comments, only: :index
  end

  resources :users, only: :show

  root to: "posts#index"
end

# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts do # TODO: Restrict to useful routes
    resources :comments, only: :index
  end

  resources :users

  root to: "posts#index"
end

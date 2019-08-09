# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts do # TODO: Restrict to useful routes
    get :comments, on: :member # TODO: Make RESTful
  end

  resources :users

  root to: "posts#index"
end

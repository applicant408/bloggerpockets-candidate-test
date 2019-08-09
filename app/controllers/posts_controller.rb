# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.published.includes(:user)

    if params[:sort].present?
      @posts = @posts.order("created_at #{params[:sort]}") # TODO: Solve SQL injection
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  # TODO: Make this RESTful
  def comments
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user)
  end
end

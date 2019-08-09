# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.published.includes(:user).order(created_at: :desc)
    @posts = @posts.reorder(created_at: params[:sort]) if params[:sort].in? %w[asc desc]
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

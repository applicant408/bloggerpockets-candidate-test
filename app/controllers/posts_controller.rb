# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.where(published: true).includes(:user) # TODO: Use .published scope

    if params[:sort].present?
      @posts = @posts.order("created_at #{params[:sort]}") # TODO: Solve SQL injection
    end

    # TODO: Remove this, it's not needed
    respond_to do |format|
      format.html
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

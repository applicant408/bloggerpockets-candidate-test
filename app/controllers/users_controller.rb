# frozen_string_literal: true

class UsersController < ApplicationController
  # TODO: Consider authorization

  def show
    @user = User.find(params[:id])
    @posts = @user.posts # TODO: Not needed if we render collection
    # TODO: Perhaps we should only show published posts?

    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end
end

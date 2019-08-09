# frozen_string_literal: true

class UsersController < ApplicationController
  # TODO: Consider authorization

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end
end

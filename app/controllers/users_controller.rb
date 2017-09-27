class UsersController < ApplicationController
  def login
    user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if !user
      render status: :unauthorized, json: {
        "error": "There is no user with that username and password."
      }
    else
      render json: {token: user.token}
    end
  end
end

class AuthController < ApplicationController
  def signup
    session[:user_id] = 123
    render json: {result: 'Success'}
  end

  def current
    if session[:user_id]
      render json: {name: 'John Doe', id: 123}
    else
      render json: {result: 'Unauthorized'}, status: 401
    end
  end
end

class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login
  
  # POST /login
  def login
    @user = User.find_by_email(params[:email])
    if @user&.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                     user: { name: @user.name, avatar: @user.avatar_attachment, role: @user.roles[0].name, permissions: nil }}, status: :ok
    else
      render json: { error: 'No autorizado' }, status: :unauthorized
    end
  end
  
  private
  
  def login_params
    params.permit(:email, :password)
  end
end

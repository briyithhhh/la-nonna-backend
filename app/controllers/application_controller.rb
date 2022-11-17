class ApplicationController < ActionController::API
  include CanCan::ControllerAdditions

  rescue_from CanCan::AccessDenied do |exception|
    render json: { error: exception.message }, status: :unauthorized
  end

  def not_found
    render json: { message: 'Not Found' }
  end

  def welcome 
    render json: {
      message: "La Nonna - Administrative System - Version: 2.3.2"
    }
  end
  
  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    @user = User.find(JsonWebToken.decode(header).first[1])
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::ExpiredSignature => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end
end
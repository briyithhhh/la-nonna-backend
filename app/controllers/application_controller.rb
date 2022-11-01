class ApplicationController < ActionController::API

  def not_found
    render json: { message: 'Not Found' }
  end

  def welcome 
    render json: {
      message: "La Nonna - Administrative System - Version: 2.1.1"
    }
  end
  
  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end
end
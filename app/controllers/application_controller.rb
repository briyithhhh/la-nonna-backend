class ApplicationController < ActionController::API
  include CanCan::ControllerAdditions

  def not_found
    render json: { message: 'Not Found' }
  end

  def welcome 
    render json: {
      message: "La Nonna - Administrative System - Version: 2.3.5"
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

  # rescue_from CanCan::AccessDenied do |exception|
  #   respond_to do |format|
  #     format.jsonapi { render jsonapi: { meta: { error: exception.message } }, status: :forbidden }
  #     format.json { head :forbidden, content_type: 'text/html' }
  #     format.html { redirect_to main_app.root_url, notice: exception.message }
  #     format.js   { head :forbidden, content_type: 'text/html' }
  #   end
  # end
end
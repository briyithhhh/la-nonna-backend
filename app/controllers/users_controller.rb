class UsersController < ApplicationController
  # user.avatar.attach(user_params[:avatar])
  # before_action :authorize_request, except: :create
  before_action :find_user, except: %i[create index]

  # GET /users
  def index
    @users = User.includes(cards: [:user], cart: [:user], facturas: [:user], avatar_blob: [:user])
    render json: @users, include: [:avatar_blob, :cards, :facturas, :cart], status: :ok
  end

  # GET /users/{cedula}
  def show
    render json: @user, include: [:avatar_blob, :cards, :cart, :facturas], status: :ok
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      Cart.create(user_id: @user.id)
      SendMessages.new.send_welcome_message
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # PUT /users/{cedula}
  def update
    unless @user.update(user_params)
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # DELETE /users/{cedula}
  def destroy
    @user.destroy
  end

  private

  def find_user
    @user = User.find_by(params[:_cedula])
    rescue ActiveRecord::RecordNotFound
      render json: { errors: 'User not found' }, status: :not_found
  end

  def user_params
    params.permit(
      :avatar, :name, :email, :cedula, :password, :password_confirmation, :location, :phone
    )
  end
end

class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: %i[ show update destroy ]

  # GET /chatrooms
  # GET /chatrooms.json
  def index
    @chatrooms = Chatroom.all
    render json: @chatrooms
  end

  # GET /chatrooms/1
  # GET /chatrooms/1.json
  def show
  end

  # POST /chatrooms
  # POST /chatrooms.json
  def create
    @chatroom = Chatroom.new(chatroom_params)

    if @chatroom.save
      render :show, status: :created, location: @chatroom
    else
      render json: @chatroom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chatrooms/1
  # PATCH/PUT /chatrooms/1.json
  def update
    if @chatroom.update(chatroom_params)
      render :show, status: :ok, location: @chatroom
    else
      render json: @chatroom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chatrooms/1
  # DELETE /chatrooms/1.json
  def destroy
    @chatroom.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatroom
      @chatroom = Chatroom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chatroom_params
      params.require(:chatroom).permit(:name)
    end
end

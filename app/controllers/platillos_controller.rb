class PlatillosController < ApplicationController
  before_action :authorize_request
  before_action :set_platillo, only: %i[show update destroy]

  # GET /platillos
  def index
    @platillos = Platillo.all
    render json: @platillos, status: :ok
  end

  # GET /platillos/{id}
  def show
    render json: @platillo, status: :ok
  end

  # POST /platillos
  def create
    @platillo = Platillo.new(platillo_params)
    if @platillo.save
      render json: @platillo, status: :created
    else
      render json: { errors: @platillo.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # PUT/PATCH /platillos/{id}
  def update
    if @platillo.update(platillo_params)
      render json: @platillo, status: :ok
    else
      render json: { errors: @platillo.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # DELETE /platillos/{id}
  def destroy
    @platillo.destroy
  end

  private

  def set_platillo
    @platillo = Platillo.find(params[:id])
  end

  def platillo_params
    params.require(:platillo).permit(:name, :price, :category)
  end

end

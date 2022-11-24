class FacturasController < ApplicationController
  before_action :set_factura, only: %i[show update destroy]

  def index
    @facturas = Factura.all
    render json: @facturas, include: [:platillos, :user], status: :ok
  end

  def show 
    render json: @factura, status: :ok
  end

  def create
    @factura = Factura.new(factura_params)
    @platillos = params[:platillos]
    @iva = 1.16
    if @factura.save
      @platillos.each do |platillo, quantity|
        PlatillosHasFactura.create(platillo_id: platillo, factura_id: @factura.id, quantity: quantity)
        @factura.update(total: Platillo.find(platillo).price * quantity * @iva, tipo: "Fiscal", price: Platillo.find(platillo).price * quantity)
      end
      render json: @factura, status: :created
    else
      render json: { errors: @factura.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private 

  def set_factura
    @factura = Factura.find(params[:id])
  end

  def factura_params
    params.require(:factura).permit(:user_id, :platillos)
  end
end

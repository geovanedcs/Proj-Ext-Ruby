class CartsController < ApplicationController
  before_action :set_notepad
  before_action :set_cart, only: %i[ show edit update shop destroy ]

  # GET /carts or /carts.json
  def index
    @carts = @notepad.carts.all
  end

  # GET /carts/1 or /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = @notepad.carts.new
    4.times {@cart.products.build}
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts or /carts.json
  def create
    @cart = @notepad.carts.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to notepad_cart_url(@notepad, @cart), notice: "Cart was successfully created." }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1 or /carts/1.json
  def update
    respond_to do |format|
      if @notepad.carts.update(cart_params)
        format.html { redirect_to notepad_cart_url(@notepad, @cart), notice: "Cart was successfully updated." }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  def shop
    @cart.products.update_all(:status => true)
  
  end

  # DELETE /carts/1 or /carts/1.json
  def destroy
    @cart.destroy

    respond_to do |format|
      format.html { redirect_to _carts_url, notice: "Cart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notepad
      @notepad = Notepad.find params[:notepad_id]
    end
    def set_cart
      @cart = @notepad.carts.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(:name, :status, products_attributes: [:id, :name, :amount, :status, :_destroy])
    end
end

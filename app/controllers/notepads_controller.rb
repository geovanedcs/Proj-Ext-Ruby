class NotepadsController < ApplicationController
  before_action :set_notepad, only: %i[ show edit update destroy ]

  # GET /notepads or /notepads.json
  def index
    @notepads = Notepad.all
  end

  # GET /notepads/1 or /notepads/1.json
  def show
  end

  # GET /notepads/new
  def new
    @notepad = Notepad.new
  end

  # GET /notepads/1/edit
  def edit
  end

  # POST /notepads or /notepads.json
  def create
    @notepad = Notepad.new(notepad_params)

    respond_to do |format|
      if @notepad.save
        format.html { redirect_to _notepad_url(@notepad), notice: "Notepad was successfully created." }
        format.json { render :show, status: :created, location: @notepad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @notepad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notepads/1 or /notepads/1.json
  def update
    respond_to do |format|
      if @notepad.update(notepad_params)
        format.html { redirect_to _notepad_url(@notepad), notice: "Notepad was successfully updated." }
        format.json { render :show, status: :ok, location: @notepad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notepad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notepads/1 or /notepads/1.json
  def destroy
    @notepad.destroy

    respond_to do |format|
      format.html { redirect_to _notepads_url, notice: "Notepad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notepad
      @notepad = Notepad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notepad_params
      params.fetch(:notepad, {})
    end
end

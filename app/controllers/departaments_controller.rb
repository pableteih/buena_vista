class DepartamentsController < ApplicationController
  before_action :set_departament, only: %i[ show edit update destroy ]
  before_action :authorize_admin, only: [:new, :create, :edit, :update, :destroy]


  def authorize_admin
    unless current_user&.admin?
      flash[:alert] = "No tienes permisos para realizar esta acción."
      redirect_to departaments_path
    end
  end
  # GET /departaments or /departaments.json
  def index
    @departaments = Departament.all
  end

  # GET /departaments/1 or /departaments/1.json
  def show
  end

  # GET /departaments/new
  def new
    @departament = Departament.new
  end

  # GET /departaments/1/edit
  def edit
  end

  # POST /departaments or /departaments.json
  def create
    @departament = Departament.new(departament_params)

    respond_to do |format|
      if @departament.save
        format.html { redirect_to departament_url(@departament), notice: "Departament was successfully created." }
        format.json { render :show, status: :created, location: @departament }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @departament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departaments/1 or /departaments/1.json
  def update
    respond_to do |format|
      if @departament.update(departament_params)
        format.html { redirect_to departament_url(@departament), notice: "Departament was successfully updated." }
        format.json { render :show, status: :ok, location: @departament }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @departament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departaments/1 or /departaments/1.json
  def destroy
    @departament.destroy

    respond_to do |format|
      format.html { redirect_to departaments_url, notice: "Departament was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departament
      @departament = Departament.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def departament_params
      params.require(:departament).permit(:floor, :number, :bedrooms, :bathrooms, :squaremeters, :price, :client_id, :building_id, :status_id, images:[])
    end
end

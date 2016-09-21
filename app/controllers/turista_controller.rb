class TuristaController < ApplicationController
  before_action :set_turistum, only: [:show, :edit, :update, :destroy]

  # GET /turista
  # GET /turista.json
  def index
    @turista = Turistum.all
  end

  # GET /turista/1
  # GET /turista/1.json
  def show
  end

  # GET /turista/new
  def new
    @turistum = Turistum.new
  end

  # GET /turista/1/edit
  def edit
  end

  # POST /turista
  # POST /turista.json
  def create
    @turistum = Turistum.new(turistum_params)

    respond_to do |format|
      if @turistum.save
        format.html { redirect_to @turistum, notice: 'Turistum was successfully created.' }
        format.json { render :show, status: :created, location: @turistum }
      else
        format.html { render :new }
        format.json { render json: @turistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turista/1
  # PATCH/PUT /turista/1.json
  def update
    respond_to do |format|
      if @turistum.update(turistum_params)
        format.html { redirect_to @turistum, notice: 'Turistum was successfully updated.' }
        format.json { render :show, status: :ok, location: @turistum }
      else
        format.html { render :edit }
        format.json { render json: @turistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turista/1
  # DELETE /turista/1.json
  def destroy
    @turistum.destroy
    respond_to do |format|
      format.html { redirect_to turista_url, notice: 'Turistum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turistum
      @turistum = Turistum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turistum_params
      params.require(:turistum).permit(:nombre, :mail, :contraseÇña)
    end
end

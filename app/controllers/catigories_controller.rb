class CatigoriesController < ApplicationController
  before_action :set_catigory, only: [:show, :edit, :update, :destroy]

  # GET /catigories
  # GET /catigories.json
  def index
    @catigories = Catigory.all
  end

  # GET /catigories/1
  # GET /catigories/1.json
  def show
  end

  # GET /catigories/new
  def new
    @catigory = Catigory.new
  end

  # GET /catigories/1/edit
  def edit
  end

  # POST /catigories
  # POST /catigories.json
  def create
    @catigory = Catigory.new(catigory_params)

    respond_to do |format|
      if @catigory.save
        format.html { redirect_to @catigory, notice: 'Catigory was successfully created.' }
        format.json { render :show, status: :created, location: @catigory }
      else
        format.html { render :new }
        format.json { render json: @catigory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catigories/1
  # PATCH/PUT /catigories/1.json
  def update
    respond_to do |format|
      if @catigory.update(catigory_params)
        format.html { redirect_to @catigory, notice: 'Catigory was successfully updated.' }
        format.json { render :show, status: :ok, location: @catigory }
      else
        format.html { render :edit }
        format.json { render json: @catigory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catigories/1
  # DELETE /catigories/1.json
  def destroy
    @catigory.destroy
    respond_to do |format|
      format.html { redirect_to catigories_url, notice: 'Catigory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catigory
      @catigory = Catigory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catigory_params
      params.require(:catigory).permit(:name, :description)
    end
end

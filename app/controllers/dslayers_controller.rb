class DslayersController < ApplicationController
  before_action :set_dslayer, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /dslayers or /dslayers.json
  def index
    @dslayers = Dslayer.all
    if params[:id].present?
      set_dconan
      else
    @dslayer = Dslayer.new
      end
  end

  # GET /dslayers/1 or /dslayers/1.json
  def show
  end

  # GET /dslayers/new
  def new
    @dslayer = Dslayer.new
  end

  # GET /dslayers/1/edit
  def edit
  end

  # POST /dslayers or /dslayers.json
  def create
    @dslayer = Dslayer.new(dslayer_params)

    respond_to do |format|
      if @dslayer.save
        format.html { redirect_to dslayers_path }
        format.json { render :show, status: :created, location: @dslayer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dslayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dslayers/1 or /dslayers/1.json
  def update
    respond_to do |format|
      if @dslayer.update(dslayer_params)
        format.html { redirect_to request.referer}
        format.json { render :show, status: :ok, location: @dslayer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dslayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dslayers/1 or /dslayers/1.json
  def destroy
    @dslayer.destroy

    respond_to do |format|
      format.html { redirect_to dslayers_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dslayer
      @dslayer = Dslayer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dslayer_params
      params.require(:dslayer).permit(:day, :episode, :title, :manga)
    end
end

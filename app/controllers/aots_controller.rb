class AotsController < ApplicationController
  before_action :set_aot, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /aots or /aots.json
  def index
    @aots = Aot.all
    if params[:id].present?
      set_aot
      else
    @aot = Aot.new
      end
  end

  # GET /aots/1 or /aots/1.json
  def show
  end

  # GET /aots/new
  def new
    @aot = Aot.new
  end

  # GET /aots/1/edit
  def edit
  end

  # POST /aots or /aots.json
  def create
    @aot = Aot.new(aot_params)

    respond_to do |format|
      if @aot.save
        format.html { redirect_to aots_path}
        format.json { render :show, status: :created, location: @aot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aots/1 or /aots/1.json
  def update
    respond_to do |format|
      if @aot.update(aot_params)
        format.html { redirect_to request.referer}
        format.json { render :show, status: :ok, location: @aot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aots/1 or /aots/1.json
  def destroy
    @aot.destroy

    respond_to do |format|
      format.html { redirect_to aots_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aot
      @aot = Aot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aot_params
      params.require(:aot).permit(:day, :episode, :title, :manga)
    end
end

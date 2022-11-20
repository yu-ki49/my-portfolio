class DconansController < ApplicationController
  before_action :set_dconan, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /dconans or /dconans.json
  def index
    @dconans = Dconan.all
    if params[:id].present?
      set_dconan
      else
    @dconan = Dconan.new
      end
  end

  # GET /dconans/1 or /dconans/1.json
  def show
  end

  # GET /dconans/new
  def new
    @dconan = Dconan.new
  end

  # GET /dconans/1/edit
  def edit
  end

  # POST /dconans or /dconans.json
  def create
    @dconan = Dconan.new(dconan_params)

    respond_to do |format|
      if @dconan.save
        format.html { redirect_to dconans_path}
        format.json { render :show, status: :created, location: @dconan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dconan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dconans/1 or /dconans/1.json
  def update
    respond_to do |format|
      if @dconan.update(dconan_params)
        format.html { redirect_to request.referer}
        format.json { render :show, status: :ok, location: @dconan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dconan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dconans/1 or /dconans/1.json
  def destroy
    @dconan.destroy

    respond_to do |format|
      format.html { redirect_to dconans_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dconan
      @dconan = Dconan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dconan_params
      params.require(:dconan).permit(:day, :episode, :title, :manga)
    end
end

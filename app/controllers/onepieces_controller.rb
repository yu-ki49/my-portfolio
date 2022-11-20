class OnepiecesController < ApplicationController
    before_action :set_onepiece, only: %i[ show edit update destroy ]
    before_action :authenticate_user!, except: [:show, :index]

    # GET /onepieces or /onepieces.json
    def index
    @onepieces = Onepiece.all

    if params[:id].present?
        set_onepiece
        else
    @onepiece = Onepiece.new
        end
    end

    # GET /onepieces/1 or /onepieces/1.json
    def show
        @onepiece = Onepiece.find(params[:id])
    end

# GET /onepieces/new
def new
    @onepiece = Onepiece.new
end

# GET /onepieces/1/edit
    def edit
    end

    # POST /onepieces or /onepieces.json
    def create
    @onepiece = Onepiece.new(onepiece_params)

    respond_to do |format|
        if @onepiece.save
        format.html { redirect_to onepieces_path}
        format.json { render :show, status: :created, location: @onepiece }
        else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @onepiece.errors, status: :unprocessable_entity }
        end
    end
    end

    # PATCH/PUT /onepieces/1 or /onepieces/1.json
    def update
        respond_to do |format|
            if @onepiece.update(onepiece_params)
                format.html { redirect_to request.referer }
                format.json { render :show, status: :ok, location: @onepiece }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @onepiece.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /onepieces/1 or /onepieces/1.json
    def destroy
        @onepiece.destroy
        respond_to do |format|
            format.html { redirect_to onepieces_url}
            format.json { head :no_content }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_onepiece
        @onepiece = Onepiece.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def onepiece_params
        params.require(:onepiece).permit(:day, :episode, :title, :manga)
    end
end

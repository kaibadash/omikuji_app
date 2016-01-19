class OmikujiResultsController < ApplicationController
  before_action :set_omikuji_result, only: [:show, :edit, :update, :destroy]

  # GET /omikuji_results
  # GET /omikuji_results.json
  def index
    @omikuji_results = OmikujiResult.all.reverse
    @omikuji_result = OmikujiResult.new
  end

  # GET /omikuji_results/1
  # GET /omikuji_results/1.json
  def show
  end

  # GET /omikuji_results/new
  def new
    @omikuji_result = OmikujiResult.new
  end

  # GET /omikuji_results/1/edit
  def edit
  end

  # POST /omikuji_results
  # POST /omikuji_results.json
  def create
    @omikuji_result = OmikujiResult.new(omikuji_result_params).do_omikuji()

    respond_to do |format|
      if @omikuji_result.present? && @omikuji_result.save
        format.html { redirect_to "/" }
        format.json { render :show, status: :created, location: @omikuji_result }
      else
        format.html { redirect_to "/", notice: @omikuji_result.errors }
        format.json { render json: @omikuji_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /omikuji_results/1
  # PATCH/PUT /omikuji_results/1.json
  def update
    respond_to do |format|
      if @omikuji_result.update(omikuji_result_params)
        format.html { redirect_to @omikuji_result, notice: 'Omikuji result was successfully updated.' }
        format.json { render :show, status: :ok, location: @omikuji_result }
      else
        format.html { render :edit }
        format.json { render json: @omikuji_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /omikuji_results/1
  # DELETE /omikuji_results/1.json
  def destroy
    @omikuji_result.destroy
    respond_to do |format|
      format.html { redirect_to omikuji_results_url, notice: 'Omikuji result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_omikuji_result
      @omikuji_result = OmikujiResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def omikuji_result_params
      params.require(:omikuji_result).permit(:omikuji)
    end
end

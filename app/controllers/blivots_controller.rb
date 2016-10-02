class BlivotsController < ApplicationController
  before_action :set_blivot, only: [:show, :edit, :update, :destroy]

  # GET /blivots
  # GET /blivots.json
  def index
    @blivots = Blivot.all
  end

  # GET /blivots/1
  # GET /blivots/1.json
  def show
  end

  # GET /blivots/new
  def new
    @blivot = Blivot.new
  end

  # GET /blivots/1/edit
  def edit
  end

  # POST /blivots
  # POST /blivots.json
  def create
    @blivot = Blivot.new(blivot_params)

    respond_to do |format|
      if @blivot.save
        format.html { redirect_to @blivot, notice: 'Blivot was successfully created.' }
        format.json { render :show, status: :created, location: @blivot }
      else
        format.html { render :new }
        format.json { render json: @blivot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blivots/1
  # PATCH/PUT /blivots/1.json
  def update
    respond_to do |format|
      if @blivot.update(blivot_params)
        format.html { redirect_to @blivot, notice: 'Blivot was successfully updated.' }
        format.json { render :show, status: :ok, location: @blivot }
      else
        format.html { render :edit }
        format.json { render json: @blivot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blivots/1
  # DELETE /blivots/1.json
  def destroy
    @blivot.destroy
    respond_to do |format|
      format.html { redirect_to blivots_url, notice: 'Blivot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blivot
      @blivot = Blivot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blivot_params
      params.require(:blivot).permit(:name, :description, :priority)
    end
end

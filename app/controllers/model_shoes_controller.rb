class ModelShoesController < ApplicationController
  before_action :set_model_shoe, only: [:show, :edit, :update, :destroy]

  # GET /model_shoes
  # GET /model_shoes.json
  def index
    @model_shoes = ModelShoe.all
  end

  # GET /model_shoes/1
  # GET /model_shoes/1.json
  def show
  end

  # GET /model_shoes/new
  def new
    @model_shoe = ModelShoe.new
  end

  # GET /model_shoes/1/edit
  def edit
  end

  # POST /model_shoes
  # POST /model_shoes.json
  def create
    @model_shoe = ModelShoe.new(model_shoe_params)

    respond_to do |format|
      if @model_shoe.save
        format.html { redirect_to @model_shoe, notice: 'Model shoe was successfully created.' }
        format.json { render :show, status: :created, location: @model_shoe }
      else
        format.html { render :new }
        format.json { render json: @model_shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /model_shoes/1
  # PATCH/PUT /model_shoes/1.json
  def update
    respond_to do |format|
      if @model_shoe.update(model_shoe_params)
        format.html { redirect_to @model_shoe, notice: 'Model shoe was successfully updated.' }
        format.json { render :show, status: :ok, location: @model_shoe }
      else
        format.html { render :edit }
        format.json { render json: @model_shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_shoes/1
  # DELETE /model_shoes/1.json
  def destroy
    @model_shoe.destroy
    respond_to do |format|
      format.html { redirect_to model_shoes_url, notice: 'Model shoe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_shoe
      @model_shoe = ModelShoe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def model_shoe_params
      params.require(:model_shoe).permit(:shoe_id)
    end
end

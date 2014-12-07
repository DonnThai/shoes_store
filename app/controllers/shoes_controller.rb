class ShoesController < ApplicationController
  before_action :set_shoe, only: [:show]

  # GET /shoes
  # GET /shoes.json
  def index
    @shoes = Shoe.all
  end

  # GET /shoes/1
  # GET /shoes/1.json
  def show
    @new_comment = Comment.new
    @comments = @shoe.comments.order("updated_at DESC")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoe
      @shoe = Shoe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shoe_params
      params.require(:shoe).permit(:name, :category_id, :company_id, :description, :price)
    end
end

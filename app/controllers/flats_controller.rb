class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  # def index
  #   @flat = Flat.search(params[:search])
  # end

  def show; end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit; end

  def update
    @flat.update(flat_params)

    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy

    redirect_to flats_path
  end

  # def find
  #   @search = Flat.find(params[:id])
  #   @flats = Flat.where("name Like '%#{search}'")
  # end

  def search
    # @flats = Flat.where("name LIKE ?, '%#{params[:q]}%'")
    @flats = Flat.where("name LIKE ?", "%#{params[:query]}%")
    @word_searched = params[:query]
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description,
                                 :price_per_night, :number_of_guests, :search,
                                 :image)
  end
end

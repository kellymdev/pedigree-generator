class CatsController < ApplicationController
  before_action :authenticate_user!

  def show
    @cat = current_user.cats.find(params[:id])
  end

  def index
    @cats = current_user.cats.order(:name)
  end

  def new
    @cat = Cat.new
  end

  def create
    puts params
    @cat = current_user.cats.create!(cat_params)

    redirect_to @cat
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :registration_number, :breed_id, :coat_colour_id)
  end
end

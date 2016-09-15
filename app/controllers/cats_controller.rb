class CatsController < ApplicationController
  before_action :authenticate_user!

  def show
    find_cat
  end

  def index
    @cats = current_user.cats.order(:name)
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = current_user.cats.create!(cat_params)

    redirect_to @cat
  end

  def edit
    find_cat
  end

  def update
    find_cat

    if @cat.save!
      redirect_to @cat
    end
  end

  private

  def find_cat
    @cat = current_user.cats.find(params[:id])
  end

  def cat_params
    params.require(:cat).permit(:name, :registration_number, :breed_id, :coat_colour_id)
  end
end

class CatsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_cat, only: [:show, :edit, :update]

  def show
  end

  def index
    @cats = current_user.cats.order(:name)
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = current_user.cats.new(cat_params)

    if @cat.save
      redirect_to @cat
    else
      render :new
    end
  end

  def edit
  end

  def update
    @cat.update_attributes!(cat_params)

    redirect_to @cat
  end

  private

  def find_cat
    @cat = current_user.cats.find(params[:id])
  end

  def cat_params
    params.require(:cat).permit(:name, :registration_number, :breed_id, :coat_colour_id, :sire_id, :dam_id, :gender_id, :title_id)
  end
end

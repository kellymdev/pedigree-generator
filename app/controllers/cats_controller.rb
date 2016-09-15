class CatsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cats = current_user.cats.order(:name)
  end

  def new
    @cat = Cat.new
  end

  def create
    puts params
    @cat = Cat.create!(cat_params.merge(user: current_user))

    redirect_to @cat
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :registration_number, :breed_id, :coat_colour_id)
  end
end

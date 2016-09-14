class CatsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cats = current_user.cats.order(:name)
  end
end

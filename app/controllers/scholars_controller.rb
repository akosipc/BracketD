class ScholarsController < ApplicationController

  def index
    @scholar = Scholar.all
  end

  def show
    @scholar = Scholar.find(params[:id])
  end

end

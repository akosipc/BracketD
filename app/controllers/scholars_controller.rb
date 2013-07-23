class ScholarsController < ApplicationController

  def index
    @scholars = Scholar.all
  end

  def show
    @scholar = Scholar.find(params[:id])
  end

end

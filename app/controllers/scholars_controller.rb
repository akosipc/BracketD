class ScholarsController < ApplicationController

  def show
    @scholar = Scholar.find(params[:id])
  end

end

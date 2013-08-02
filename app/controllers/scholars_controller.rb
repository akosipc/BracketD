class ScholarsController < ApplicationController

  def index
    @scholars = Scholar.all
  end

  def show
    @scholar = Scholar.find(params[:id])
  end

  def destroy
    Scholar.delete_all
    redirect_to root_path
  end

end

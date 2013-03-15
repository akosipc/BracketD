class PagesController < ApplicationController

  def index
    @scholars = Scholar.all
  end

end

class PledgesController < ApplicationController
  inherit_resources

  belongs_to :scholars

  def index
    @pledge = Pledge.new
  end

  def new
  end

  def create
    create! do |success, failure|
      success.html{redirect_to scholar_pledges(params[:scholar_id]), notice: 'Successfully Pledged' }
      failure.html{render 'new', alert: 'Errors were found' }
    end
  end

  def edit
  end

  def update
    update! do |success, failure|
      success.html{redirect_to scholar_pledges(params[:scholar_id]), notice: 'Successfully Pledged' }
      failure.html{render 'edit', alert: 'Errors were found' }
    end
  end

end

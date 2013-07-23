class PledgesController < ApplicationController
  inherit_resources

  belongs_to :scholar

  def create
    create! do |success, failure|
      success.html{redirect_to scholar_path(params[:scholar_id]), notice: 'Successfully Pledged' }
      failure.html{redirect_to scholar_path(params[:scholar_id]), notice: 'Error in Pledge' }
    end
  end

  def update
    update! do |success, failure|
      success.html{redirect_to scholar_path(params[:scholar_id]), notice: 'Successfully Pledged' }
      failure.html{redirect_to scholar_path(params[:scholar_id]), alert: 'Error in Pledge' }
    end
  end

end

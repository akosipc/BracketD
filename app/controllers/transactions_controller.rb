class TransactionsController < ApplicationController
  before_filter :load

  inherit_resources

  belongs_to :pledge

  def load
    @pledge = Pledge.find(params[:pledge_id])
  end

  def index
  end

  def deposit

  end

  def credit_card

  end

  def paypal

  end

private
  def billing_address (params)
    { address1:         params[:cc_address],
      address2:         params[:cc_address2],
      city:             params[:cc_city],
      state:            params[:cc_province],
      country:          params[:cc_country],
      zip:              params[:cc_zip] }
  end

  def billing_valid? (params)
    params[:cc_address].present? and params[:cc_city].present? and params[:cc_province].present? and
    params[:cc_country].present? and params[:cc_zip].present?
  end
end

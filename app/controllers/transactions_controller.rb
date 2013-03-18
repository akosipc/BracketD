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
end

module ScholarsHelper

  def meter_length (scholar)
    (scholar.paid_amount.to_f / scholar.amount.to_f) * 100
  end

end

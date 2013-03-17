class Transaction < ActiveRecord::Base
  attr_accessible :code, :number, :status, :details, :express_token, :denomination, :payment,
                  :cc_name, :cc_address1, :cc_address2, :cc_city, :cc_province, :cc_country, :cc_zip, :payer_id

  attr_accessor   :cc_number, :cc_expires_on, :cc_cvv

  def amount_in_cents
    self.denomination.to_i * 100
  end 

  def credit_card (hash)
    ActiveMerchant::Billing::CreditCard.new({
      name:                 hash[:cc_name],
      number:               hash[:cc_number],
      month:                hash["cc_expires_on(2i)"],
      year:                 hash["cc_expires_on(1i)"],
      verification_value:   hash[:cc_cvv]
    })
  end
end

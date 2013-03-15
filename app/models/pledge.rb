class Pledge < ActiveRecord::Base
  attr_accessible :amount, :status, :first_name, :last_name, :email, :contact_number, :message, :scholar_id

  validates_presence_of :email, :amount
  validates_numericality_of :amount

  scope :paid, where(status: 'Paid')
  scope :unpaid, where(status: 'Unpaid')

  belongs_to :scholar
end

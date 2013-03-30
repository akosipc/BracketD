class Pledge < ActiveRecord::Base
  attr_accessible :amount, :status, :first_name, :last_name, :email, :contact_number, :message, :scholar_id

  validates_presence_of :email, :amount
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :amount, numericality: { greater_than: 1 } 

  scope :paid, where(status: 'Paid')
  scope :unpaid, where(status: 'Unpaid')

  belongs_to :scholar
  has_one :transaction

end


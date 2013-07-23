class Pledge < ActiveRecord::Base
  attr_accessible :amount, :status, :first_name, :last_name, :email, :contact_number, :message, :scholar_id

  validates :email, :amount, :status, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :amount, numericality: { greater_than: 1 }

  scope :paid, lambda { where(status: 'Paid') }
  scope :unpaid, lambda { where(status: 'Unpaid') }

  belongs_to :scholar
  has_one :transaction

  rails_admin do
    edit do
      field :first_name
      field :last_name
      field :email
      field :contact_number
      field :amount
      field :status
      field :message
      field :scholar
    end
  end

end


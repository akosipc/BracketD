class Scholar < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :description, :age, :school, :avatar_path, :status, :amount, :avatar_path_cache, :pledge_ids

  mount_uploader :avatar_path, AvatarUploader

  validates :first_name, :last_name, :description, :age, :school, :status, :amount, presence: true
  validates :age, :amount, numericality: true

  scope :funded, lambda { where(status: 'Funded') }
  scope :active, lambda { where(status: 'Active') }

  has_many :pledges

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def paid_amount
    amount = 0
    self.pledges.paid.collect(&:amount).map{|v| amount += v.to_i }
    amount
  end

  rails_admin do
    edit do
      field :first_name
      field :last_name
      field :avatar_path
      field :amount
      field :school
      field :age
      field :description
      field :status
    end
  end
end

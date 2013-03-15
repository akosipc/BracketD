class Scholar < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :description, :age, :school, :avatar_path, :status, :amount, :avatar_path_cache, :pledge_ids

  mount_uploader :avatar_path, AvatarUploader

  validates_presence_of :first_name, :last_name, :description, :age, :school, :status

  scope :funded, where(status: 'Funded')
  scope :active, where(status: 'Active')

  has_many :pledges

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def paid_amount
    amount = 0
    self.pledges.paid.collect(&:amount).map{|v| amount += v.to_i }
    return amount
  end
end

class Scholar < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :description, :age, :school, :avatar_path, :status, :amount

  mount_uploader :avatar_path, AvatarUploader

  validates_presence_of :first_name, :last_name, :description, :age, :school, :status

  scope :funded, where(status: 'Funded')
  scope :active, where(status: 'Active')

  has_many :pledges

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

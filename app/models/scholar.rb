class Scholar < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :description, :age, :school, :avatar_path, :status, :amount

  validates_presence_of :first_name, :last_name, :description, :age, :school, :status

  scope :funded, where(status: 'Funded')
  scope :active, where(status: 'Active')

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

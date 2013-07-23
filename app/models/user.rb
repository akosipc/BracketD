class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  rails_admin do
    edit do
      field :email
      field :password
      field :password_confirmation
      field :first_name
      field :last_name
    end
  end
end

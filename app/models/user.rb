class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable, :validatable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :registerable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation

  validates :email, :presence => true,
                    :uniqueness => true,
                    :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :allow_blank => true }
  validates :password, :presence => { :on => :create },
                       :length => { :within => 6..20, :allow_blank => true },
                       :confirmation => true
end

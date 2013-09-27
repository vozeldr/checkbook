class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
	  :firstname, :lastname, :nickname
  # attr_accessible :title, :body
  
  has_many :accounts 
  
  validates :firstname, presence:true

  validates :lastname, presence:true

  validates :nickname, presence:true

  def fullname
	  firstname + " " + lastname
  end
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:name,:admin,:totaldays
  # attr_accessible :title, :body
  has_many :vacations
  
  def is_admin?
    if self.admin
      return true
    else
      return false
    end
  end
  
  def updatetotaldays
    vacations=self.vacations
    days=0
    self.totaldays=15
    vacations.each do|vacation|
      days+=vacation.days
    end
    self.totaldays-=days
    self.save
  end
  
end

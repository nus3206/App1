class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence:true
  validates :name, length:{ minimum: 5 }
  
  before_create :set_dob

  private 
  def set_dob
  	self.dob = Time.zone.now.to_date
  	
  end
end

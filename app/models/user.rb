class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :statuses
  
  # Instance methods
  def full_name
  	if !first_name.nil? 
      first_name + " " + last_name
    else
      ""
    end
  end
         
end

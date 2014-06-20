class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :statuses

  # Validations. email and password validations are provided by 'devise'.
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence: true,
                           uniqueness: true,
                           format: { with: /\A[a-zA-Z\-\_]+\Z/, message: 'must be formatted correctly!' }

  # Instance methods
  def full_name
  	if !first_name.nil? 
      first_name + " " + last_name
    else
      ""
    end
  end
         
end

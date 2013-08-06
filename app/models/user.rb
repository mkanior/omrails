class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # attr_accessible :name, :email, :password, :password_confirm
  devise :database_authenticatable, :registerable, #:recoverable, 
  		 :rememberable, :trackable, :validatable
  has_many :pins, :dependent => :destroy
end

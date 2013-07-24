class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :age, :gender
  attr_accessible :email, :name

  has_many :surveys, :dependent => :destroy
  has_many :user_answers, :dependent => :destroy
  has_many :answers, :through => :user_answers, :dependent => :destroy
  has_many :user_inference_responses, :dependent => :destroy
  has_many :user_inference_weights, :dependent => :destroy
end

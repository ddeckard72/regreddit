class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments

  validates_presence_of :email, :password, :username
  validates_uniqueness_of :email, :username
  validates_length_of :password, minimum: 8

  has_many :posts
end

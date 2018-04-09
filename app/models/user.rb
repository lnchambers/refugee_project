class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :trackable, :validatable, :lockable,
         :timeoutable
  validates_presence_of :username, :first_name, :role
  validates_uniqueness_of :username
  enum role: ['user', 'admin']
  has_many :requests
end

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

  def requests_since_last_sign_in
    if last_sign_in_at
      Request.where(created_at: last_sign_in_at..Time.now).count
    else
      0
    end
  end

  def has_requests?
    !requests.empty?
  end
end

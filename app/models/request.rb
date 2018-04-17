class Request < ApplicationRecord
  after_save :set_status
  belongs_to :user

  def set_status
    status = "Pending" unless status
  end
end

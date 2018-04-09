class AddUserIdToRequests < ActiveRecord::Migration[5.1]
  def change
    add_reference :requests, :user, type: :uuid, null: false, index: true
  end
end

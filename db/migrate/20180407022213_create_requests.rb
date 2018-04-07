class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.integer :age
      t.string :name
      t.string :gender
      t.string :country_of_origin
      t.integer :group_size
      t.string :country_of_separation
      t.string :status
      t.string :country_found
      t.string :city_found

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.text :username
      t.text :first_name
      t.text :last_name
      t.integer :role
      t.text :password_digest
      t.text :email

      t.timestamps
    end
  end
end

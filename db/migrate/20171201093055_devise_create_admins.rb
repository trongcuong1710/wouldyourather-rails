class DeviseCreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      ## Database authenticatable
      t.string :email,              null: false
      t.string :first_name,         null: false, default: ""
      t.string :last_name,          null: false, default: ""

      ## Trackable
      t.datetime :last_sign_in_at
      t.inet     :last_sign_in_ip

      t.timestamps null: false
    end

    add_index :admins, :email,                unique: true
  end
end

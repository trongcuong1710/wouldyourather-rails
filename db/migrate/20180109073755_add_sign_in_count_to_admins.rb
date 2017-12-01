class AddSignInCountToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :sign_in_count, :int
  end
end

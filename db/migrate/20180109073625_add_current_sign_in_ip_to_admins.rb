class AddCurrentSignInIpToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :current_sign_in_ip, :inet
  end
end

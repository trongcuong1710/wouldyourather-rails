class AuthorizationService
  def self.authorize(auth_hash)
    email = auth_hash["info"]["email"]
    admin = Admin.find_by(email: email)

    if admin.present?
      admin.first_name = auth_hash["info"]["first_name"]
      admin.last_name = auth_hash["info"]["last_name"]
    end

    admin
  end
end
class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :trackable, :omniauthable, omniauth_providers: [:google_oauth2]

  validates :email, format: Devise.email_regexp
end

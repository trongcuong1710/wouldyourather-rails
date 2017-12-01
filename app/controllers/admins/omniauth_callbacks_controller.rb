class Admins::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    auth_hash = request.env['omniauth.auth']
    @admin = AuthorizationService.authorize(auth_hash)
    unless @admin.nil?
      sign_in_and_redirect @admin, event: :authentication
    else
      redirect_to root_path, alert: 'Unauthorized!!!'
    end
  end
end
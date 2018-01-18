Rails.application.routes.draw do
  get 'home/index'

  resources :surveys
  devise_for :admins, :controllers => { :omniauth_callbacks => "admins/omniauth_callbacks" }
  root to: "home#index"
end

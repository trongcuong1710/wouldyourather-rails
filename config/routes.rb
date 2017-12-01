Rails.application.routes.draw do
  get 'home/index'

  resources :surveys
  devise_for :admins, :controllers => { :omniauth_callbacks => "admins/omniauth_callbacks" }
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  as :admins do

  end
end

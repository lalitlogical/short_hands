Rails.application.routes.draw do

  devise_for :users, path: "auth", controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
    # passwords: "users/passwords" #,
    # omniauth_callbacks: "users/omniauth_callbacks"
  }, path_names: {
    sign_in: 'login',
    sign_up: 'signup',
    sign_out: 'logout'
  }, sign_out_via: [:get, :post, :delete]

  resources :short_hands do
    collection do
      get :autocomplete
    end
  end

  root 'short_hands#new'
end

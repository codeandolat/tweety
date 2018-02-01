Rails.application.routes.draw do
  devise_for :users, controllers: {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }

  post "/sign_up_validation", to: "users/omniauth_callbacks#sign_up_validation"

  authenticated :user do
    root 'home#index'
  end

  unauthenticated :user do
    root 'home#unregistered'
  end
end

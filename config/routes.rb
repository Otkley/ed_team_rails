Rails.application.routes.draw do

  # Aqui modificamos el path de las rutas por defecto de devise
  # rails routes | grep user
  # devise_for :users
  # /users/sign_in to /login
  # /users/sign_out to /logout
  # /users/sign_up to /register
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  }
  
  resources :rooms do
    member do
      get :reserve
    end
  end

  root to: 'pages#index'

  get "home", to: 'pages#home' # /home
  get "about", to: 'pages#about' # /about
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

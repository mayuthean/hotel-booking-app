Rails.application.routes.draw do
  devise_for :users
  get "/home" => "static_pages#home"
  root "static_pages#home"

  resources :room_types do
    resources :rooms
  end

  devise_for :admins

  namespace :admin do
    root "rooms#index"
    resources :rooms
    resources :room_types
  end

  resources :rooms do
    resources :booking
  end

end

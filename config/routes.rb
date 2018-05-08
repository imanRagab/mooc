Rails.application.routes.draw do
  
  resources :comments
  resources :lectures do
    resources :comments
    member do
      post :comment
    end
  end

  resources :courses

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #override devise register controller
  devise_for :users, :controllers => {:registrations => "users/registrations"}
end

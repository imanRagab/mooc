Rails.application.routes.draw do
  
  ##################################

  resources :lectures do
    resources :comments

    # like/unlike route
    member do
      post :like_unlike
    end

  end

  #######################
  
  resources :courses do
    # resources :lectures
  end

  ##################################

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  ##################################

  #override devise register controller
  devise_for :users, :controllers => {:registrations => "users/registrations"}
end

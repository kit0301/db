Rails.application.routes.draw do
  get "home/top" => "home#top"
  get "home/diary1" => "home#diary1" 
  get "home/diary_snow" => "home#diary_snow"
  get "home/snow_heart" => "home#snow_heart"
  get "home/write" => "home#write"
  get "home/diary" => "home#diary"
  get "home/new" => "home#new"
  get "home/:id" => "home#show"
  post "home/create" => "home#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end

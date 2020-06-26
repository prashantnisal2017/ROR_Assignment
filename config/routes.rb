Rails.application.routes.draw do
  get 'report/index'
  resources :feedbacks
  resources :companies
  resources :trails
  resources :trail_configurations
  resources :patients
  resources :drugs
  resources :reports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'application/home'
  root 'application#home'
  resources :clinic_doctors
  resources :clinics
  
  # namespace :api do
  #   namespace :v1 do
  #    resources :drugs
  #   end
  # end 
end

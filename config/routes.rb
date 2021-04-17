Rails.application.routes.draw do
  
  #GET /about
  get "about-us", to: "about#index" , as: :about
  
  #VERB /signup
  get "sign_up", to: "registrations#new" 
  post "sign_up" , to: "registrations#create"

  #VERB /signin
  get "sign_in", to: "sessions#new" 
  post "sign_in" , to: "sessions#create"

  #DELETE /logout
  delete "logout" , to: "sessions#destroy"

  #GET /
  root to:"main#index"


end
 
Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :persons do 
    resources :person_deleter, controller: "person_deleter", only: :update
  end
  
  root 'welcome#index'
  resources :galactic_clusters

  
end
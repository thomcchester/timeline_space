Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :persons
  
  root 'welcome#index'
  resources :galactic_clusters

  
end
Rails.application.routes.draw do
  get 'model/galactic_clusters'

  get 'welcome/index'
 
  resources :persons
 
  root 'welcome#index'
end
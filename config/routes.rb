Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :persons do 
    post "delete", perrr :person_deleter
  end
  
  root 'welcome#index'
  resources :galactic_clusters
  resources :galactic_arms
  resources :artificial_constructs

  
end
Rails.application.routes.draw do
  
  root 'petitions#index'

  #agents routes--------------------------------------------------------------------------
  post 'assign_aggent/:id', to: 'petitions#assign_agent', as:'assign_agent'
  post 'end_request/:id', to: 'petitions#end_request', as:'end_request'
  post 'create_request', to: 'petitions#create', as:'create_request'
  #agents routes--------------------------------------------------------------------------
  resources :agents


end

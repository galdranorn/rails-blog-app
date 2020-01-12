Rails.application.routes.draw do
  resources :entries

  # get 'entries/index', to: 'entries#index'
  # get 'entries/new', to: 'entries#new'
  # get 'entries/:id', to: 'entries#show'
  # post 'entries/index', to: 'entries#create'
  # get 'entries/:id/edit', to: 'entries#edit'
  # patch 'entries/:id', to: 'entries#update'

  root 'welcome#index'
end

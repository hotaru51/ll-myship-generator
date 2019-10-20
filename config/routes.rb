Rails.application.routes.draw do
  root to: 'ships#index'
  get 'ships', to: 'ships#index'
  post 'ships', to: 'ships#create'
  get 'ships/new', to: 'ships#new'
  get 'ships/:id', to: 'ships#show'
  get 'ships/:id/edit', to: 'ships#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

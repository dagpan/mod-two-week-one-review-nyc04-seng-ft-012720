Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get '/', to: "seas#welcome", as: 'welcome'
    get '/seas', to: "seas#index", as: 'seas'
    get '/seas/new', to: "seas#new", as: 'new'
    get '/seas/:id', to: "seas#show", as: 'sea'
    post '/seas', to: "seas#create"
    get '/seas/:id/edit', to: "seas#edit", as: 'edit'
    patch '/seas/:id', to: "seas#update"
    delete '/seas/:id', to: "seas#delete"
    # match '/seas/:id', to: "seas#show", via: [:get, :patch]
    # resources :seas, only: [:index, :show, :new, :create, :edit, :update]

end

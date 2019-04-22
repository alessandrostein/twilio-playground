Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
  resources :contacts do
    member do
      get 'messages', to: 'messages#index'
    end
  end
  resources :messages, only: [:show, :new, :create]
  root "contacts#index"
end

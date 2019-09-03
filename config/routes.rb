Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  #Note Routes
  resources :notes

  authenticated :user do
    root 'notes#index', as: "authenitcated_root"
  end

  root 'welcome#index'

  
  

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

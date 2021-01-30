Rails.application.routes.draw do
  resources :notify_messages
  get 'home/index'
  get 'home/index1' 

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

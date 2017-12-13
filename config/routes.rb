Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'signup' => 'users#new'
  resources :users

  resources :categories
  resources :posts do
  	resources :comments
  end

  root 'posts#index'
  get '/about' => 'posts#about'
  get '/services' => 'posts#services'
  get '/contact' => 'posts#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

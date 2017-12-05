Rails.application.routes.draw do
  
  resources :perros, :ratings
  get 'sessions/new'
  
  get 'ratings/busca', to: 'ratings#busca'

  get 'pages/index'
  
  get 'post/post'
  
  get 'blog/hola'
  get 'blog/rate'
  get 'blog/teachers'
  get 'vert', to:'pages#index'

  
  get 'profile', to: 'blog#hola'
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  post 'wendy', to: 'blog#new'
  post 'poster', to: 'blog#poster'
  get 'blog/serabeberhoy'
  get 'blog', to: 'blog#serabeberhoy'
  post 'blog', to: 'blog#serabeberhoy'

  post 'vert', to: 'blog#vert'
  
  get 'molly', to: 'blog#teachers'
  
  
  
  get 'home', to: 'pages#index'
  
  root 'pages#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

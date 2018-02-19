Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'books#index'
  get  'books', to: 'books#index'
  get  'books/new', to: 'books#new'
  post 'books/confrim', to: 'books#confirm'
  post 'books/create', to: 'books#create'
end

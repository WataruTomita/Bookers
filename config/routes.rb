Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  # top page
  root to: 'books#top'
  # post 'creater_books' => 'books#create'
  get 'books' => 'books#create'
end

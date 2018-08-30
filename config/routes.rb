Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, :except => :new

get '/' => 'root#top'

get '/books/:id/edit' => 'books#edit'

patch '/books/:id' => 'books#update'

delete '/books/:id' => 'books#destroy'

end

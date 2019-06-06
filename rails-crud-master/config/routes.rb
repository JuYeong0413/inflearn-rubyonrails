Rails.application.routes.draw do
  root 'items#index'
  resources :items do#, except: :index
   resources :comments, only: [:create, :destroy]
  end
  devise_for :users
  
  # get '/items' => 'items#items'
  # get '/items/new' => 'items#new'
  # post '/create' => 'items#create'
  # get '/items/:item_id' => 'items#show'
  # get '/items/:item_id/edit' => 'items#edit'
  # post '/items/update/:item_id' => 'items#update'
  # get '/items/:item_id/delete' => 'items#delete'
end

Rails.application.routes.draw do
  
  #CREATE
  get '/new_gif' => 'application#new'
  get '/create_gif' => 'application#create'
  
  #READ
  get 'gifs/:id' => 'application#show'
  get '/gifs' => 'application#index'
  
  #UPDATE
  get '/gifs/:id/edit' => 'application#edit'
  get '/update_gif/:id' => 'application#update'
  
  #DESTROY
  get '/gifs/:id/destroy' => 'application#destroy'

end

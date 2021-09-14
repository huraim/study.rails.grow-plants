Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/' => 'plant#index'
  get '/write' => 'plant#write'
  post '/create' => 'plant#create'

  get '/detail/:plant_id' => 'plant#detail'
  get '/delete/:plant_id' => 'plant#delete'
  post '/update/:plant_id' => 'plant#update'
end

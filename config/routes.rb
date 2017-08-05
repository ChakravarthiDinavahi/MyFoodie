Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  # get "/restaurants" => "restaurant#index"
  # get "/restaurant/new" => "restaurant#new"
  # post "/restaurants" => "restaurant#create"
  # get "/restaurant/:id/edit"=> "restaurant#edit"
  # post "/restaurant/:id" => "restaurant#update"
  # get "/restaurant/:id" => "restaurant#show"
  # delete "/restaurant/:id" => "restaurant#destroy"
  # get "/items" => "item#index"
  resources :restaurants do
    resources :addresses
  end
  resources :items

end

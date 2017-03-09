Rails.application.routes.draw do
	root "tweets#index"

  get "feed" => "profiles#feed"

  get 'likes/create'

get "profiles/:id" => "profiles#show", as: :profile

get "profiles" => "profiles#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :tweets do 
  resource :like
end

resources :relationships

end

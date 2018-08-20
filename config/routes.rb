Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/pages/about'    => 'pages#about'
  get '/signups/new'    => 'signups#new'
  get '/signups/dbtest' => 'signups#dbtest'
  get '/pages/contact'  => 'pages#contact'
  get '/pages/thanks'   => 'pages#thanks'
  post 'signups/create' => 'signups#create'
end

Rails.application.routes.draw do

  root 'home#index'

  # ***********  ECET  *****************
  get "/addecet/mathematics/:count" => "ecet#mathematics"
  get "/addecet/mathematics" => "ecet#mathematics"

  get "/addecet/physics/:count" => "ecet#physics"
  get "/addecet/physics" => "ecet#physics"

  get "/addecet/chemistry/:count" => "ecet#chemistry"
  get "/addecet/chemistry" => "ecet#chemistry"

  get "/addecet/ece/:count" => "ecet#ece"
  get "/addecet/ece" => "ecet#ece"

  get "/addecet/cse/:count" => "ecet#cse"
  get "/addecet/cse" => "ecet#cse"
  
  get "/addecet/eee/:count" => "ecet#eee"
  get "/addecet/eee" => "ecet#eee"
  
  get "/addecet/mechanical/:count" => "ecet#mechanical"
  get "/addecet/mechanical" => "ecet#mechanical"
  
  get "/addecet/civil/:count" => "ecet#civil"
  get "/addecet/civil" => "ecet#civil"
  
  get '/adminecet' => "ecet#index"

  post '/addecet' => 'ecet#addecet'
  # ***********  EAMCET  *****************
  get '/admineamcet' => "eamcet#index"


  devise_for :users, :controllers => { :registrations => 'registrations'}
  devise_scope :user do
      get "/login", :to => 'devise/sessions#new'
      get '/logout', :to => 'devise/sessions#destroy' 
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

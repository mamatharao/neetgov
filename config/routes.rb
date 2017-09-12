Rails.application.routes.draw do
  root 'ecet#index'

  # ***********  ECET  *****************
  get "/addquestions/mathematics/:count" => "ecet#mathematics"
  get "/addquestions/mathematics" => "ecet#mathematics"

  get "/addquestions/physics/:count" => "ecet#physics"
  get "/addquestions/physics" => "ecet#physics"

  get "/addquestions/chemistry/:count" => "ecet#chemistry"
  get "/addquestions/chemistry" => "ecet#chemistry"

  get "/addquestions/ece/:count" => "ecet#ece"
  get "/addquestions/ece" => "ecet#ece"

  get "/addquestions/cse/:count" => "ecet#cse"
  get "/addquestions/cse" => "ecet#cse"
  
  get "/addquestions/eee/:count" => "ecet#eee"
  get "/addquestions/eee" => "ecet#eee"
  
  get "/addquestions/mechanical/:count" => "ecet#mechanical"
  get "/addquestions/mechanical" => "ecet#mechanical"
  
  get "/addquestions/civil/:count" => "ecet#civil"
  get "/addquestions/civil" => "ecet#civil"
  
  get '/adminecet' => "ecet#index"
  post '/addecet' => 'ecet#addecet'
  # ***********  EAMCET  *****************
  
  devise_for :users, :controllers => { :registrations => 'registrations'}
  devise_scope :user do
      get "/login", :to => 'devise/sessions#new'
      get '/logout', :to => 'devise/sessions#destroy' 
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

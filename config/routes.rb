Rails.application.routes.draw do



  namespace :admin do
    resources :users
    resources :eamcets
    resources :ecets
    resources :roles
    resources :livetests
    resources :testcounts

    root to: "users#index"
  end

  get 'superadmin/index'

  root 'home#index'

  # *********** HOME  ******************
  

  # ***********  ADMIN  *****************
  get "/board" =>"board#index"
  get "/superadmin" =>"superadmin#index"
  get "superadmin/create_admin" => "superadmin#create_admin"
  post "/addsuperadmin" => "superadmin#addsuperadmin"
  get "/board/:id/delete" => "superadmin#delete"
  get '/superadmin/livetests' => 'superadmin#livetests'
  post '/addlivetest' => 'superadmin#addlivetest'


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

  get '/adminecet/test_questions/:testcount/:subject' => 'ecet#testcount_question'

  delete '/ecet/question/:id/delete/:testcount/perminent' => 'ecet#destroy'
  ################ ECET EXAM ######################
  get '/exam/ecet/:subject/:count' => 'ecetexam#index'
  post '/submitquestion/ecet' => 'ecetexam#submitquestion'
  get '/ecetresults/:subject/:count/' => 'ecetexam#ecetresults'
  patch '/submitquestion_update' => 'ecetexam#submitquestion_update'
  patch '/ecettimesubmit' => 'ecetexam#ecettimesubmit'

  get '/ecet-subjects' => 'ecetexam#ecet_subjects'
  get '/ecet-subjects-tests/:subject' => 'ecetexam#ecet_subjects_tests'
  
  # ***********  EAMCET  *****************
  get '/admineamcet' => "eamcet#index"
  get "/addeamcet/:subject/:count" => "eamcet#addeamcet"
  get "/addeamcet/:subject" => "eamcet#addeamcet"
  get '/admineamcet/test_questions/:testcount' => 'eamcet#testcount_question'
  post '/addemacetque' => 'eamcet#addemacet_que'
  delete '/eamcet/question/:id/delete/:testcount/perminent' => 'eamcet#destroy'



  devise_for :users, :controllers => { :registrations => 'registrations'}
  devise_scope :user do
      get "/login", :to => 'devise/sessions#new'
      get '/logout', :to => 'devise/sessions#destroy' 
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  #get 'newsessions/new'
  #get 'newsessions/create'
  #get 'newsessions/destroy'
  root 'searchpage#home'
  get 'sessions/new'
  get 'applicants/new'
  get 'searchpage/home'
  get 'searchpage/result'
  #get 'searchpage/process'
  post 'searchpage/proce'
  post 'searchpage/result'
  post 'applicants/create'
  post 'sessions/create'
  #get 'sessions/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'static_pages/home'
  #get 'static_pages/help'
  get 'sessions/destroy'
  get 'static_pages/searching'

  #get 'search/result'

  #get '/personalpage/:id',to:'personalpage#show'

  #get '/search/index'

  get '/infopage/:id',to:'infopage#info'
end

Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'applicants/new'
  get 'applicants/create'
  get 'searchpage/home'
  get 'searchpage/result'
  #get 'searchpage/process'
  post 'searchpage/proce'
  post 'searchpage/result'
  post 'applicants/create'
  post 'sessions/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'static_pages/home'

  #get 'static_pages/help'
  
  get 'static_pages/searching'

  #get 'search/result'

  #get '/personalpage/:id',to:'personalpage#show'

  #get '/search/index'

  get '/infopage/:id',to:'infopage#info'
end

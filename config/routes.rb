Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'static_pages/home'

  #get 'static_pages/help'
  
  #get 'static_pages/searching'

  #get 'search/result'

  #get '/personalpage/:id',to:'personalpage#show'

  #get '/search/index'

  get '/infopage/:id',to:'infopage#info'
end

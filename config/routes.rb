Rails.application.routes.draw do
  root 'pages#home'

  post '/rules'    => 'laws#rules'
  post '/get_page' => 'laws#get_page'
  post '/details'  => 'laws#details'
end

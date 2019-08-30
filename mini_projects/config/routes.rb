Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/mainpage' => 'main#mainpage'
  get '/hilo' => 'hilo#hilo'
  root to: 'main#mainpage'
  get "/hilo/delete_cookies" => 'hilo#delete_cookies'
  get '/madlibs' => 'madlibs#madlibs'
  get '/magic' => 'magic#magic'
 

end

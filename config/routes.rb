Rails.application.routes.draw do
  get "/loginew" => "user#loginew"
  post "/loginew" => "user#keep"
  get "/logout" => "user#logout"
  get "/login" => "user#login_form"
  post "/login" => "user#login"
  get "/login" => "user#login"

  get "/" => 'home#top'
  get "/:id" => "home#show"
  get "/:id/:book/destroy" => "home#destroy"
  post "/:id/destroy2" => "home#destroy2"
  get "/:id/choice" => "home#Choice"
  post "/:id/choice" => "home#decision"
  get  "about" => "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "top" => "home#create"
  post "top/:id" => "home#save"
  
end

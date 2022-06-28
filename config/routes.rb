Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/experiences" => "experiences#index"
  get "/experiences/:id" => "experiences#show"
  post "/experiences" => "experiences#create"
  patch "/experiences/:id" => "experiences#update"
  delete "/experiences/:id" => "experiences#destroy"

  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  get "/educations" => "educations#index"
  get "/educations/:id" => "educations#show"
  post "/educations" => "educations#create"
  patch "/educations/:id" => "educations#update"
  delete "/educations/:id" => "educations#destroy"

  get "/capstones" => "capstones#index"
  get "/capstones/:id" => "capstones#"
  post "/capstones" => "capstones#create"
  patch "/capstones/:id" => "capstones#update"
  delete "/capstones/:id" => "capstones#destroy"
  
  get "/skills" => "skills#index"
  get "/skills/:id" => "skills#show"
  post "/skills" => "skills#create"
  patch "/skills/:id" => "skills#update"
  delete "/skill/:id" => "skills#destroy"
end

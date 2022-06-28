Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "educations" => "educations#index"
  get "educations/:id" => "educations#show"
  post "educations/:id" => "educations#create"
  patch "educations/:id" => "educations#update"
  delete "educations" => "educations#destroy"
end

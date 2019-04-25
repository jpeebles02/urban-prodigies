Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/videos" => "videos#index"
    get "/videos/:id" => "videos#show"
    post "/videos" => "videos#create"
    delete "/videos/:id" => "videos#destroy"
    patch "/videos/:id" => "videos#update"

    get "/artists" => "artists#index"
    get "/artists/:id" => "artists#show"
    post "/artists" => "artists#create"
    delete "/artists/:id" => "artists#destroy"
    patch "/artists/:id" => "artists#update"

    get "/genres" => "genres#index"
    get "/genres/:id" => "genres#show"
    post "/genres" => "genres#create"
    patch "/genres/:id" => "genres#update"
  end
end

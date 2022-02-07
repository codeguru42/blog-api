Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  jsonapi_resources :articles do
    collection do
      get :latest
    end
  end
  jsonapi_resources :comments
end

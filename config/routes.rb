Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope path: "api" do
    resources :books
    resources :authors
    resources :users do
      collection do
        post :login
      end
    end
  end
end

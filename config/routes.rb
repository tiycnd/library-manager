Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope path: "api" do
    resources :books do
      resources :reviews, only: [:create, :destroy]
    end
    resources :authors
    resources :users, except: [:index] do
      collection do
        post :login
      end
    end
  end
end

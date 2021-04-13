Rails.application.routes.draw do
  resources :users
  resources :posts do
    collection do
      post :confirm
    end
  end
  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

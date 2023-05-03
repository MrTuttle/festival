Rails.application.routes.draw do
  root to: "pages#home"

  resources :spectacles do
    resources :performs, only: [:new, :create, :edit]
  end

  resources :performs do
    collection do
      get :top
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

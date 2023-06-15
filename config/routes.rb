Rails.application.routes.draw do
  root to: "spectacles#index"

  resources :spectacles do
    resources :performs
  end



  resources :performs do
    collection do
      get :top
    end
    collection do
      get :dimanche
    end
    collection do
      get :samedi
    end
    collection do
      get :vendredi
    end
    collection do
      get :jeudi
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do

  devise_for :users

  resources :items, only: [:new, :create], path_names: { new: "create" }
  resources :welcome, path: "", only: :index do
     collection do
        get :about
        get :brandon
     end
  end

  resources :user, only: [:index, :show] do
     resources :items
  end

  root "welcome#index"

end

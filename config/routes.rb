Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :items, only: [:new, :create], path_names: { new: "create" }
  resources :welcome, path: "", only: :index do #-> url.com/
     collection do
        get :about   #-> url.com/about
        get :brandon #-> url.com/brandon
     end
  end

  resources :users, only: [:index, :show] do #-> there may be a conflict with "/users/" as devise also uses "/users/" path
     resources :items #-> url.com/users/:user_id/items
  end



  root "welcome#index"

end

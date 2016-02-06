Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'items/create'

  get  'welcome/index'

  get  'about' => 'welcome#about'

  get  'brandon' => 'welcome#brandon'

  root 'welcome#index'

  resources :users, only: [:index, :show] do
    resources :items
   end

end

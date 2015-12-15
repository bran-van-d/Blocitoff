Rails.application.routes.draw do

  get 'items/create'

  devise_for :users, :controllers => { registrations: 'registrations' }

  get  'welcome/index'

  get  'welcome/about'

  root 'users#show'

  resources :users do
    resources :items
  end

  resources :items

end

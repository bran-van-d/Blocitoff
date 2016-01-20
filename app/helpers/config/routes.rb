Rails.application.routes.draw do

  get 'items/create'

  devise_for :users, :controllers => { registrations: 'registrations' }

  get  'welcome/index'

  get  'about' => 'welcome#about'

  get  'brandon' => 'welcome#brandon'

  root 'welcome#index'

  resources :users do
    resources :items
  end

#  resources :items

end

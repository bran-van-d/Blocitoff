Rails.application.routes.draw do

  get 'users/new'

  get 'users/show'

  get 'users/create'

  get 'users/index'

  devise_for :users

  get  'welcome/index'

  get  'welcome/about'

  root 'welcome#index'

end

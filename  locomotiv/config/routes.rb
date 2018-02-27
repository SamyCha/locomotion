Rails.application.routes.draw do
  get 'projects/new'

  get 'projects/create'

  get 'projects/edit'

  get 'projects/destroy'

  get 'projects/index'

  get 'projects/update'

  get 'projects/show'

get 'accompagner' => 'pages#accompagner'



  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

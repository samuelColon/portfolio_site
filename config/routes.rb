Rails.application.routes.draw do
  devise_for :users
	resources :projects

	root 'projects#index'

	get 'projects/:id' => 'projects#show'
  get 'projects/new' => 'projects#new'

  get 'secret' => 'devise/sessions#new'


end
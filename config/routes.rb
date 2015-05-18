Rails.application.routes.draw do
	resources :projects

	root 'projects#index'

	get 'projects/:id' => 'projects#show'
  get 'projects/new' => 'projects#new'
end
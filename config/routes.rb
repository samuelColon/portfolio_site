Rails.application.routes.draw do
  devise_for :users
	resources :projects

	root 'home#index'

  get 'projects/' => 'projects#index'
  get 'projects/new' => 'projects#new'
  get 'projects/:id' => 'projects#show'

  get 'bio/' => 'home#bio'
  get 'contact/' => 'home#contact'
end
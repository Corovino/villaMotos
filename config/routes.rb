Rails.application.routes.draw do
  
  get 'products/index'

  get 'products/new'

  get 'products/show'

  get 'products/edit'

  get 'products/destroy'

  get 'products/update'

  get 'brands/index'

  get 'brands/new'

  get 'brands/show'

  get 'brands/edit'

  get 'brands/update'

  get 'brands/delete'

  get 'brands/create'

  get 'categories/new'

  get 'categories/create'

  get 'categories/update'

  get 'categories/edit'

  get 'categoriesrake/destroy'

  get 'categories/index'

  get 'categories/show'

  get 'dashboard/index'

  resources :products, :categories, :brands 


  devise_for :users

  devise_scope :user do
	  authenticated :user do
	    root 'dashboard#index', as: :authenticated_root
	  end

	  unauthenticated do
	    root 'devise/sessions#new', as: :unauthenticated_root
	  end
end

  #devise_for :models, 
  #devise_for :users, controllers: {registrations: "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

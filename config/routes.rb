Rails.application.routes.draw do
  get 'categories/new'

  get 'categories/create'

  get 'categories/update'

  get 'categories/edit'

  get 'categoriesrake/destroy'

  get 'categories/index'

  get 'categories/show'

  get 'dashboard/index'

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

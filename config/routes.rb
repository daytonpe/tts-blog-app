#This page holds all our routes in a DSL (Domain Specific Language) 
#tells Rails how to connect incoming requests to controllers and actions


Rails.application.routes.draw do
  
  #Rails provides a resources method which can be used to declare a standard REST resource.
	resources :articles do
		resources :comments
	end

	#get 'welcome/index' tells Rails to map requests to http://localhost:3000/welcome/index to the welcome controller's index action
  get 'welcome/index'

  #root 'welcome#index' tells Rails to map requests to the root of the application to the welcome controller's index action
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

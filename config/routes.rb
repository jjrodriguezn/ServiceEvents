Rails.application.routes.draw do
  resources :eventms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'eventms#index'
	
end

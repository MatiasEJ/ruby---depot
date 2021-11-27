Rails.application.routes.draw do
  root 'personas#index', as: 'lista_personas'
  resources :personas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

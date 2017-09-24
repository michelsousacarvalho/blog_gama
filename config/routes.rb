Rails.application.routes.draw do
  get 'welcome/index'
  post 'welcome/index', to: 'welcome#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :articles

  root 'welcome#index'
end

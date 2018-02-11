Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  delete 'crafts/:id', to: 'crafts#destroy'

  resources :crafts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

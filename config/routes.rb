Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'parties#index'
resources :parties, only: [:index, :new, :create]
get '/parties/:id', to: 'parties#show', as: 'party'
get '/parties/:id/edit', to: 'parties#edit', as: 'edit_party'
patch '/parties/:id', to: 'parties#update'

end

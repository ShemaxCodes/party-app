Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :parties, only: [:index, :new, :create]
get '/parties/:id', to: 'parties#show', as: 'party'

end

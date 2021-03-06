Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  resources :users
  resources :histories
  get 'lista', to: 'histories#lista'
  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
#

Rails.application.routes.draw do
 devise_for :people
  get 'welcome/index'
  root 'welcome#index'

  resources :sources
  resources :fact_checks
  resources :statements
  resources :events
  resources :organizations
  resources :parties
  resources :checkers
  resources :moderators
  resources :politicians
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

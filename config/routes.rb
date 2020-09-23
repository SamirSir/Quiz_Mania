Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :results
  resources :questions
  resources :subjects
  devise_for :users

  root 'quiz#index'
  get 'quiz/check'
  post '/quiz/result'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

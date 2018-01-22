Rails.application.routes.draw do
  namespace :teachers do
    resources :exams, only: [:index]
  end

    namespace :teachers do
    resources :answers, only: [:index]
  end

  devise_for :users
  root to: 'home#index'
  get 'home/contact'

  devise_for :answers
  root to: 'answers#index'
  get 'home/contact'
end

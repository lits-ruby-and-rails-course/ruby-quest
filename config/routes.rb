Rails.application.routes.draw do

  namespace :teachers do
    resources :quizzes
  end

  devise_for :users
  root to: 'home#index'
  get 'home/contact'
end

Rails.application.routes.draw do

  namespace :teachers do
    resources :quizzes
    resources :exams, only: [:index]
    resources :questions
  end
  
  devise_for :users
  root to: 'home#index'
  get 'home/contact'
end

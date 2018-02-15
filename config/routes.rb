Rails.application.routes.draw do

  namespace :teachers do
    resources :quizzes
    resources :exams
    resources :groups 
    resources :answers
    resources :questions
  end
  
  devise_for :users
  root to: 'home#index'
  get 'home/contact'
end

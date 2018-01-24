Rails.application.routes.draw do
  namespace :teachers do
    get 'quizzes/index'
  end

  namespace :teachers do
    get 'quizzes/show'
  end

  namespace :teachers do
    get 'quizzes/new'
  end

  namespace :teachers do
    get 'quizzes/destroy'
  end

  namespace :teachers do
    get 'quizzes/edit'
  end

  namespace :teachers do
    resources :exams, only: [:index]
  end

  namespace :teachers do
    resources :quizzes
  end

  devise_for :users
  root to: 'home#index'
  get 'home/contact'
end

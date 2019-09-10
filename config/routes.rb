Rails.application.routes.draw do
  resources :clock_ins
  root 'pages#home'
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions'
  }

  resources :teachers, only: :index


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

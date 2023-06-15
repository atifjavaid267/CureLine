Rails.application.routes.draw do
  root 'users#home'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :diseases, only: %i[new create index destroy] do
    resources :disease_remedies, only: %i[new create]
    resources :healthconcerns, only: %i[create]

    member do
      get :view_remedies
    end
  end

  resources :remedies, only: %i[new create index destroy]

  resources :healthconcerns, only: %i[index destroy]
end

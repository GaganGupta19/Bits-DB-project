Rails.application.routes.draw do
  resources :prizes
  resources :team_participations
  resources :event_sub_events
  resources :sub_events
  resources :events
  resources :teams
  resources :participants
  resources :users

  resources :home do
    collection do
      post :enroll
      get :search
    end
  end

  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

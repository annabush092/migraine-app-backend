Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      # resources :triggers, only: [:index]
      # resources :trigger_logs, only: [:index]
      # resources :migraines, only: [:index]
    end
  end

end

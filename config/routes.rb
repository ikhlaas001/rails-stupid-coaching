Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Your custom routes
  root to: 'questions#ask'            # root path ("/") goes to ask page
  get 'ask', to: 'questions#ask'      # route for ask page
  get 'answer', to: 'questions#answer' # route for answer page
end

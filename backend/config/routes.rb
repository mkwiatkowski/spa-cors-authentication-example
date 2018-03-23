Rails.application.routes.draw do
  post '/signup', to: 'auth#signup'
  get '/current', to: 'auth#current'
end

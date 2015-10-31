Rails.application.routes.draw do

root             'welcome#index'
get 'help'    => 'welcome#help'
get 'social'  => 'welcome#social'
get 'signup'  => 'users#new'
get 'login'   => 'sessions#new'
get 'logout'  => 'sessions#destroy'

resources :emails
resources :lessons
resources :prayers
resources :sessions
resources :users

end

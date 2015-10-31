Rails.application.routes.draw do

  get 'sessions/new'

root             'welcome#index'
get 'help'    => 'welcome#help'
get 'social'  => 'welcome#social'

resources :emails
resources :lessons
resources :prayers
resources :users

end

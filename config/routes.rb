Rails.application.routes.draw do

  get 'users/new'

root             'welcome#index'
get 'help'    => 'welcome#help'
get 'social'  => 'welcome#social'
resources :emails
resources :prayers
resources :lessons


end

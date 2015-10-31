Rails.application.routes.draw do

root             'welcome#index'
get 'help'    => 'welcome#help'
get 'social'  => 'welcome#social'

resources :emails
resources :lessons
resources :prayers

end

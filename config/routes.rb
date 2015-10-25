Rails.application.routes.draw do

root             'welcome#index'
get 'help'    => 'welcome#help'
resources :prayers

end

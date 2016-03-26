Rails.application.routes.draw do
  root 'welcome#index'
  resources :achievements
end

Rails.application.routes.draw do
  root 'welcome#index'
  resources :achievement, only: [:new]
end

Rails.application.routes.draw do

  root 'welcome#index'
  get 'members', to: 'welcome#members'
  get 'contact', to: 'welcome#contact'
  get 'sample', to: 'welcome#sample'
  get 'link', to: 'welcome#link'


  get '/admin', to: 'admin/dashboard#index'
  namespace :admin do
    resources :members
    resources :schedules
    resources :records
  end
end

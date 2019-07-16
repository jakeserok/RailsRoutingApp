Rails.application.routes.draw do

  # get 'admin/dashboard/main'
  # get 'admin/dashboard/user'
  # get 'admin/dashboard/blog'
  #
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  # get 'pages/about'
  #
  get 'about', to: 'pages#about'
  
  # leadgen/advertising/landingpage/lead = lead
  #
  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead'
  
  resources :blogs
  resources :posts

  # globbing
  #   MUST BE BELOW RESOURCES
  get 'posts/*missing', to: 'posts#missing'

  get 'query/:something', to: 'pages#somethingelse'
  get 'query/:something/:more', to: 'pages#another'

  root to: 'pages#home'
end

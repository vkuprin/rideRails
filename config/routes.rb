Rails.application.routes.draw do
  root 'pages#index', constraints: {
    :non_api_nor_static => /[\w\d\-\_\/]+/
  }
  namespace :api, defaults: { format: 'json' } do
    resources :posts, only: :index
  end
  # get 'test', action: :default, controller: :pages

  # get 'products', action: :index, controller: 'products'
  # get 'product/:id', action: :product, controller: 'products'
  # get 'application/:id', action: :application, controller: 'applications'
  # get 'team/member/:id', action: :member, controller: 'team'
  # get 'about-us', action: :index, controller: 'about'
  # get 'literature/testimonials', action: :testimonials, controller: :literature
  # get 'literature/:file_category', action: :files, controller: :literature
  # get 'contact-us', action: :index, controller: :contacts
  # get 'faq', action: :index, controller: :faq
  # get 'blog', action: :index, controller: :blog
  # get 'blog/:page', action: :index, controller: :blog
  # get 'training-videos', action: :index, controller: :video

  # match "/404", to: "errors#not_found", via: :all
  # match "/422", to: "errors#unacceptable", via: :all
  # match "/500", to: "errors#internal_server_error", via: :all

  match '*path', to: 'pages#index', via: :all
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "menu#index"
  controller :main do
    get 'display' => :index
  end

  resources :menu, only: [
      :index, :new
  ]

  resources :meals, only: [
      :new, :create
  ]

  controller :meals do
    post 'add_product' => :add_product
  end
  # controller :menu do
  #   get '/' => :index
  #   get '/new' => :new
  # end
end

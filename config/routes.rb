Rails.application.routes.draw do
  devise_for :customers, controllers: { registrations: 'customers/registrations' }
  resources :customers, only:[:show, :index]

  root to: 'homes#top'
  resources :posts, only:[:new, :create, :index, :show, :destroy] do
    resources :post_comments, only:[:create, :destroy]
  end
end

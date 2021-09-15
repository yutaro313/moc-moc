Rails.application.routes.draw do
  resources :customers, only:[:show, :index]
  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :customers, controllers: {
          registrations: 'customers/registrations'
  }
  root to: 'homes#top'
  resources :posts, only:[:new, :create, :index, :show, :destroy] do
    resources :post_comments, only:[:create, :destroy]
  end
end

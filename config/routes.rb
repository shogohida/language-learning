Rails.application.routes.draw do
  # get 'languages/index'
  # get 'languages/show'
  # get 'languages/new'
  # get 'conversations/show'
  # get 'conversations/new'
  # get 'grammers/index'
  # get 'grammers/show'
  # get 'grammers/new'
  # get 'words/index'
  # get 'words/show'
  # get 'words/new'
  # get 'words/edit'
  devise_for :users
  root to: 'pages#home'
  resources :languages, only: [:index, :show, :new, :create] do
    resources :words
  end

  resources :languages, only: [:index, :show, :new, :create] do
    resources :grammers, only: [:index, :show, :new, :create]
  end

  resources :languages, only: [:index, :show, :new, :create] do
    resources :conversations, only: [:show, :new, :create]
  end
end

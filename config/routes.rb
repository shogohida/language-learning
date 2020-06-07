Rails.application.routes.draw do
  get 'conversations/show'
  get 'conversations/new'
  get 'grammers/index'
  get 'grammers/show'
  get 'grammers/new'
  get 'words/index'
  get 'words/show'
  get 'words/new'
  get 'words/edit'
  devise_for :users
  root to: 'pages#home'
    resources :words

  resources :grammers, only: [:index, :show, :new, :create]

  resources :conversations, only: [:show, :new, :create]
end

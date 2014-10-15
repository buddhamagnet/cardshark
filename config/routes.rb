Rails.application.routes.draw do
  root 'cards#index'

  resources :cards, only: [:index] do
    collection do
      get 'shuffle', as: :shuffle
    end
  end
end

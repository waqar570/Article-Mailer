Rails.application.routes.draw do
  #resources :testarticles
  resources :users
  root "test_articles#index"
  resources :test_articles do
  end
end

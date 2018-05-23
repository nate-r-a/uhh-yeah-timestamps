Rails.application.routes.draw do
  root "episodes#index"
  devise_for :users
  resources :segments
  resources :timestamps do
    member do
      put "vote", to: "timestamps#vote"
    end
  end
  resources :episodes
end

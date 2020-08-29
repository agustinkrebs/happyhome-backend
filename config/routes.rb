Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :shopping_list_items
      resources :shopping_lists
      resources :family_users
    end
  end

  root to: "home#index"

end

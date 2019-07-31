Rails.application.routes.draw do
  root to: 'image_files#new'
  resources :image_files
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

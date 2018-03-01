Rails.application.routes.draw do

root 'posts#index', as: 'home'

#Regular Route to About Page (Use GET REQUESTS) Pages Controller on About View
get 'about' => 'pages#about', as: 'about'

resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

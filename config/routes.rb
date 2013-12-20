KaminariBootstrap::Application.routes.draw do
  
  root "widgets#index"
  resources :widgets

end

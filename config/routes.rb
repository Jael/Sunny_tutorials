SunnyTutorial::Application.routes.draw do
  resources :users
  resources :student_infos
  resources :tutor_infos
  resources :searches
  resources :messages
  get 'login' => "sessions#new", as: :log_in
  match 'logout' => "sessions#destroy", as: :log_out
  get 'signup' => "users#create", as: :sign_up
  resources :sessions, only: :create
  root to: 'static_page#home', as: :home
  get 'guangzhou' => 'static_page#display', as: :guangzhou
end

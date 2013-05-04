SunnyTutorial::Application.routes.draw do
  resources :users
  resources :tutor_infos
  root to: 'static_page#home', as: :home
end

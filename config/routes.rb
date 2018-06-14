Rails.application.routes.draw do
  get '/works', to: 'works#index', as: 'works'
  get '/works/:id', to: 'works#show', as: 'work'

  get '/works/:work_id/web_works', to: 'web_works#index', as: 'work_web_works'
  get '/works/:work_id/web_works/:id', to: 'web_works#show', as: 'work_web_work'

  get '/works/:work_id/art_works', to: 'art_works#index', as: 'work_art_works'
  get '/works/:work_id/art_works/:id', to: 'art_works#show', as: 'work_art_work'

  get '/about', to: 'pages#about', as: 'about'

  get '/contact', to: 'pages#contact', as: 'contact'
  post '/send_contact', to: 'pages#send_contact'

  root 'works#index'
end

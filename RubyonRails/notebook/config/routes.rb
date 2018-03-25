Rails.application.routes.draw do

  get '/bemvindo' => 'home#index'

  root 'home#index' #coloca a pagina home>index como página principal

  resources :addresses #cria 8 rotas de forma automática
  resources :phones
  resources :contacts #,except: [:edit] - cria todas as rotas exceto o edit
  resources :kinds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

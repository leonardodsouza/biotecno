Rails.application.routes.draw do
  
  
  
  
  
  mount Ckeditor::Engine => '/ckeditor'
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    get 'home' => 'home#index', :as => 'home'
    get 'admin' => 'admin#index', :as => 'admin'
    resources :ajudas 
    resources :artigos   
    resources :assistencias
    resources :categorias
    resources :produtos
    resources :contatos
    resources :fotos
    resources :orcamentos
    devise_for :usuarios
    resources :banners
    resources :paginas
    resources :videos
    resources :quem_somos
    resources :manutencoes
  end
  root to: 'bemvindo#index'
  
end

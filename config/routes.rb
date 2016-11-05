Rails.application.routes.draw do

  resources :audios
  root "audios#index"
  match '/audios/get_audios', to: 'audios#get_audios', as: 'get_audios', via: :post
  match '/audios/get_by_author', to: 'audios#get_by_author', as: 'get_by_author', via: :post
  
end

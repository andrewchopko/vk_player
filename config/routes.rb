Rails.application.routes.draw do

  resources :audios
  root "audios#index"
  match '/audios/get_audios', to: 'audios#get_audios', as: 'get_audios', via: :post
end

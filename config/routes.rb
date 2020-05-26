Rails.application.routes.draw do

  # listar todos os objetos de um modelo no BD => action == index
  get '/pets', to: 'pets#index'

  # ver um objeto de um modelo no BD => action == show
  get '/pets/:id', to: 'pets#show', as: :pet
end

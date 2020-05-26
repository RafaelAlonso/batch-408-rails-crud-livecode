Rails.application.routes.draw do

  root to: 'pets#index'

  # # listar todos os objetos de um modelo no BD => action == index
  # get '/pets', to: 'pets#index'

  # # 1. uma rota para levar o usuário ao formulário
  # get '/pets/new', to: 'pets#new'
  # # 2. as informações que o usuário inputou sejam armazenas no BD
  # post '/pets', to: 'pets#create'

  # # ver um objeto de um modelo no BD => action == show
  # get '/pets/:id', to: 'pets#show', as: :pet

  # # deletar um objeto de um modelo no BD ==> action == destroy
  # delete '/pets/:id', to: 'pets#destroy'

  # resources cria as 7 rotas principais:
  # index
  # show
  # new
  # create
  # edit
  # update
  # delete
  resources :pets, except: [:edit, :update, :index]

  # marcar pet como encontrado
  patch '/pets/:id/mark_as_returned', to: 'pets#mark_as_returned', as: :return_pet
end

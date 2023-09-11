MyEngine::Engine.routes.draw do
  resources :notifications do
    put :mark_as_read, on: :member
  end

  resources :payments, only: [:new, :create, :index]
end

Rails.application.routes.draw do
  resources :students, only: [:create, :edit, :index, :new, :show, :update]
  resources :school_classes, only: [:create, :edit, :index, :new, :show, :update]
end

Rails.application.routes.draw do
  resources :students, only: [:create, :edit, :new, :show, :update]
  resources :school_classes, only: [:create, :edit, :new, :show, :update]
end

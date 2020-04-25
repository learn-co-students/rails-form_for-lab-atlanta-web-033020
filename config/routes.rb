Rails.application.routes.draw do
  resources :students, only: [:show, :edit, :new, :create, :update]
  resources :school_classes, only: [:show, :edit, :new, :create, :update]
end

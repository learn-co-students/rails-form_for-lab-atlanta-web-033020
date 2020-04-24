Rails.application.routes.draw do
  resources :school_classes
  resources :students, only: [:index, :new, :create, :show, :edit, :update]
  resources :schools, only: [:index, :new, :create, :show, :edit, :update]
end

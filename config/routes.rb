Rails.application.routes.draw do
  get 'teachers/index'

  get 'teachers/show'

  get 'teachers/dashboard'

  devise_for :users

  root to: "teachers#index"


end

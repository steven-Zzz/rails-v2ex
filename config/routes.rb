Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  # 增加主路由
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

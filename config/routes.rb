Iot4Sample::Application.routes.draw do
  resources :vals


  resources :vals, only: [:index, :create]
end

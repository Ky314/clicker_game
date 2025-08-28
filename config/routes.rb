Rails.application.routes.draw do
  get "game/index"
  get "game/click"
  get "game/buy_item"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
    # ゲーム画面の表示
  # アプリケーションのトップページを 'game#index' に設定
  root 'game#index'

  # クリック操作
  # POSTリクエストを 'game/click' に送り、'game#click' アクションを呼び出す
  post 'game/click', to: 'game#click', as: 'click_game'

  # アイテム購入
  # POSTリクエストを 'game/buy_item/:id' に送り、'game#buy_item' アクションを呼び出す
  post 'game/buy_item/:id', to: 'game#buy_item', as: 'buy_item'
end

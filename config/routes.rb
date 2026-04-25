Rails.application.routes.draw do
  root "home#index"

  # 個人情報ページ
  get "privacy", to: "static#privacy"

  # ヘルスチェック
  get "up" => "rails/health#show", as: :rails_health_check
end

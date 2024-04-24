Rails.application.routes.draw do
  # scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
    root 'home#index'
    get 'dummy/first'
    get 'dummy/second'
    get 'dummy/third'
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/fortune", controller: "my_examples", action: "fortune_method"
  get "/lottery", controller: "my_examples", action: "lottery_method"
end

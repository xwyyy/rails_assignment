Rails.application.routes.draw do
  root "meals#index"

  get "/meals", to: "meals#index"
  get "/meals/:id", to: "meals#show", as: "meal"
end
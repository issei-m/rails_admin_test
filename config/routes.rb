Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  mount RailsAdmin::Engine => "/admin", as: "rails_admin"
end

# Rails.application.routes.draw do
#   mount_devise_token_auth_for 'User', at: 'auth'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   namespace :api do
#     namespace :v1 do
#       # api test action
#       resources :users, only:[:index]
#     end
#   end
# end

Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      registrations: 'api/v1/auth/registrations'
    }
    end
  end
end
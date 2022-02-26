Rails.application.routes.draw do
  # namespace :api do
  #   get 'messages/index'
  # end

  namespace :api, defaults: { format: 'json' } do
    get '/messages', to: 'messages#index'
  end

  get '*page', to: 'static#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end

    root 'static#index'
end   
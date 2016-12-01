Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'welcome#home'

  namespace :api do
    namespace :v1 do
      resources :patterns
    end
  end

end

Rails.application.routes.draw do

  resources :companies
  get 'dashboard/show'

  resources :engineers do 
    resources :home do 
    end
  end


  resources :home do 
    member do
     put "select", to: "home#select"
    end
   end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  devise_for :admins, ActiveAdmin::Devise.config

  # below code to fix the active admin issue when table not exists in database as activeadmin tries to load every model.
  # for reference https://github.com/activeadmin/activeadmin/issues/783
  begin
    ActiveAdmin.routes(self)
  rescue Exception => e
    puts "ActiveAdmin: #{e.class}: #{e}"
  end
  root to: "engineers#index"




  get '/:id' => "shortener/shortened_urls#show"


end

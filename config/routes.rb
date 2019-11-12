Rails.application.routes.draw do

  match("/cuisines", { :controller => "application", :action => "cuisinehuh", :via => "get" })

  match("/dishes", { :controller => "application", :action => "disheshuh", :via => "get" })
  
  match("/dishes/:dishid", { :controller => "application", :action => "disheswot", :via => "get" })
  
  match("/neighborhoods", { :controller => "application", :action => "neighborwhere", :via => "get" })
  
  match("/venues", { :controller => "application", :action => "venuewot", :via => "get" })

  match("/users", { :controller => "application", :action => "userwot", :via => "get" })

  match("/venues/:venueid", { :controller => "application", :action => "venuehuh", :via => "get" })
  
  match("/users/:userid", { :controller => "application", :action => "userhuh", :via => "get" })

  

  
  # ====================================================
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

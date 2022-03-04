class SubdomainConstraint   
  
  def self.matches?(request)     
    request.subdomain.present? && request.subdomain != 'www'   
  end 
end 

Rails.application.routes.draw do
  constraints SubdomainConstraint do     
    resources :users   
  end
  resources :projects
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

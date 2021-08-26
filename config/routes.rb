Rails.application.routes.draw do
  get 'welcome' ,to:"main#welcome"
  get 'contact_us',to:"main#contact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end

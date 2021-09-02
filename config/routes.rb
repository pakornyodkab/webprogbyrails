Rails.application.routes.draw do
  get 'post/create' ,to:"ex3#createpost"
  get 'user/read' ,to:"ex3#userread"
  get 'loop' ,to:"ex2#loop"
  get 'welcome' ,to:"main#welcome"
  get 'contact_us',to:"main#contact"
  get 'testhaml' , to:"ex2#testhaml"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end

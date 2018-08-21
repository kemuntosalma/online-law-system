Rails.application.routes.draw do

  resources :chapxxxviiis
  resources :chapxxviiis
  resources :lawyers
  resources :chapxliis
  resources :chapxlis
  resources :chapxls
  resources :chapxxxixes
  resources :chapxxxviis
  resources :chapxxxvis
  resources :chapxxxvs
  resources :chapxxxivs
  resources :chapxxxiiis
  resources :chapxxxiis
  resources :chapxxxis
  resources :chapxxxes
  resources :chapxxixes
  resources :chapxxviis
  resources :chapxxvis
  get 'div8/index'
  get 'div7/index'
  get 'div6/index'
  get 'div5/index'
  resources :chapxxvs
  resources :chapxxivs
  resources :chapxxiiis
  resources :chapxxiis
  resources :chapxxis
  resources :chapxxes
  resources :chapxixes
  get 'div4/index'
  resources :chapxviiis
  resources :chapxviis
  resources :chapxvis
  resources :chapxvs
  resources :chapxivs
  get 'div3/index'
  resources :chapxiiis
  resources :chapxiis
  resources :chapxis
  resources :chapxes
  get 'div2/index'
  get 'div1/index'

  get 'chapter2/index'
  resources :chapvixes
  resources :chapviiis
  resources :chapviis
  resources :chapvis
  get 'division1/index'
  get 'chapter1/index'
  resources :divi2s
  resources :divi1s
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'dashboard/index'
  get 'posts/index'
  resources :profiles
  root 'landingpage#index'
  get 'landingpage/about'
  get 'landingpage/contact'
  get 'landingpage/index'

  get 'di1s/index'
  get 'd1s/new'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

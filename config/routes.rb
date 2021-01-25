Rails.application.routes.draw do
  resources :agents
  resources :agencies
  resources :property_statuses
  resources :property_types
  resources :mahales
  resources :ilces
  resources :ils
  resources :countries
  resources :blogs
  resources :contactmessages
  resources :searches
  get 'rent/index'
  get 'sell/index'
  resources :properties
  resources :messages
  resources :category, only: [:show]
  devise_for :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :about
  #get 'about#index'
  get 'contact',         to: 'contact#index'
  get 'about',           to: 'about#index'
  get 'services',        to: 'services#index'
  get 'properties',      to: 'properties#index_user'
  get 'dashboard',       to: 'dashboard#index'
  get 'myprofile',       to: 'myprofile#index'
  get 'favorites',       to: 'favorites#index'
  get 'myaccount',       to: 'myaccount#index'
  get 'support',         to: 'support#index'
  get 'how_it_works',     to: 'how_it_works#index'
  get 'privacy_policy',  to: 'privacy_policy#index'
  get 'term_condition',   to: 'term_condition#index'
  get 'add_property',   to: 'add_property#index'
  get 'my_listing',   to: 'my_listing#index'
  get 'partners',        to: 'partners#index'
  get 'faq_page',         to: 'faq_page#index'
  get 'our_team',         to: 'our_team#index'
  get 'pricing_plan',         to: 'pricing_plan#index'
  get 'our_office',         to: 'our_office#index'

  get 'buy',                           to: 'buy#index'
  get 'buy/search_by_place',           to: 'buy#index'
  get 'buy/search_by_place/oba',          to: 'buy#search_by_place_oba'
  get 'buy/search_by_place/kestel',          to: 'buy#search_by_place_kestel'
  get 'buy/search_by_place/tosmur',          to: 'buy#search_by_place_tosmur'

  get 'buy/search_by_type',            to: 'buy#index'
  get 'buy/search_by_type/flats',            to: 'buy#index'
  get 'buy/search_by_type/villas',            to: 'buy#index'
  get 'buy/search_by_type/land',            to: 'buy#index'



  get 'sell',                          to: 'sell#index'
  get 'sell/search_by_place',          to: 'sell#index'
  get 'sell/search_by_place/oba',          to: 'sell#search_by_place_oba'
  get 'sell/search_by_place/kestel',          to: 'sell#search_by_place_kestel'
  get 'sell/search_by_place/tosmur',          to: 'sell#search_by_place_tosmur'

  get 'sell/search_by_type',           to: 'sell#index'
  get 'sell/search_by_type/flats',            to: 'sell#index'
  get 'sell/search_by_type/villas',            to: 'sell#index'
  get 'sell/search_by_type/land',            to: 'sell#index'
 
  get 'rent',                          to: 'rent#index'
  get 'rent/search_by_place',          to: 'rent#index'
  get 'rent/search_by_place/oba',          to: 'rent#search_by_place_oba'
  get 'rent/search_by_place/kestel',          to: 'rent#search_by_place_kestel'
  get 'rent/search_by_place/tosmur',          to: 'rent#search_by_place_tosmur'


  get 'rent/search_by_type',           to: 'rent#index'
  get 'rent/search_by_type/flats',            to: 'rent#index'
  get 'rent/search_by_type/villas',            to: 'rent#index'
  get 'rent/search_by_type/land',            to: 'rent#index'
  
 # get 'accounts',         to: 'account#index'
  root 'main_page#index'

end

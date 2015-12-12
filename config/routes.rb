Rails.application.routes.draw do

  root 'main#home'

  # MAIN
  get 'products' => 'main#products' , as: 'products'
  get 'partners' => 'main#partners' , as: 'partners'
  get 'contact' => 'main#contact' , as: 'contact'
  post 'contact' => 'main#contact_submit'
  get 'jobs' => 'main#jobs' , as: 'jobs'

  # ABOUT US
  get 'about' => 'about#index' , as: 'about'
  get 'about/expertise' => 'about#expertise', as: 'expertise'
  get 'about/team' => 'about#team', as: 'team'
  get 'team/louis-bellet' => 'team#lbellet'

  # SERVICES
  get 'services' => 'services#index' , as: 'services'
  get 'services/enterprise-cloud-hosting' => 'services#cloud_hosting' , as: 'cloud_hosting'
  get 'services/devops-consulting' => 'services#consulting' , as: 'consulting'

end

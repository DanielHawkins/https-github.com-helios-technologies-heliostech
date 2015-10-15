Rails.application.routes.draw do

  root 'main#home'

  # MAIN
  get 'products' => 'main#products' , as: 'products'
  get 'partners' => 'main#partners' , as: 'partners'
  get 'contact' => 'main#contact' , as: 'contact'
  get 'jobs' => 'main#jobs' , as: 'jobs'

  # ABOUT US
  get 'about-us' => 'about#index' , as: 'about'
  get 'about-us/areas-of-expertise' => 'about#expertise', as: 'expertise'
  get 'about-us/our-team' => 'about#team', as: 'team'

  # SERVICES
  get 'services' => 'services#index' , as: 'services'
  get 'services/enterprise-cloud-hosting' => 'services#cloud_hosting' , as: 'cloud_hosting'
  get 'services/devops-consulting' => 'services#consulting' , as: 'consulting'

end

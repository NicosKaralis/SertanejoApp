Rails.application.routes.draw do
  
  get     '/datasource'   => 'data#datasource', defaults: { format: :json }
  
  put     '/biografia'    => 'data#update_biografia'
  post    '/cantada'      => 'data#nova_cantada'
  delete  '/cantada/:id'  => 'data#remover_cantada'
  
  post    '/contatos'     => 'data#novo_contato'
  put     '/contatos'     => 'data#atualizar_contatos'
  delete  '/contato/:id'  => 'data#remover_contato'
  
  post    '/albuns'       => 'data#novo_album'
  
  scope 'api', defaults: { format: :json } do
    # Registar/Atualizar usuario
    post '/usuario' => 'usuario#update'
    # Buscar usuario para cantada
    get  '/usuario' => 'usuario#buscar'
    
    # Enviar cantada
    post '/cantadas' => 'cantadas#create'
    # Buscar cantadas recebidas
    get  '/cantadas' => 'cantadas#list'
    
    # Pegar conteudo do mural
    get  '/mural' => 'posts#index'
    # Postar conteudo no mural
    post '/mural' => 'posts#create'
  end

  root 'pages#home'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

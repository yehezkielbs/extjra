Rails.application.routes.draw do
  scope 'admin', :as => 'extjra' do
    get '/', :to => 'extjra/main#index', :as => 'index'

    get '/controller/_menu', :to => 'extjra/menu#controller', :as => 'menu_controller', :format => 'js'
    get '/model/_menu', :to => 'extjra/menu#model', :as => 'menu_model', :format => 'js'
    get '/view/_menu', :to => 'extjra/menu#view', :as => 'menu_view', :format => 'js'
    get '/store/_menu', :to => 'extjra/menu#store', :as => 'menu_store', :format => 'js'

    get '/controller/*resources.js', :to => 'extjra/main#controller', :as => 'controller', :format => 'js'
    get '/model/*resources.js', :to => 'extjra/main#model', :as => 'model', :format => 'js'
    get '/view/*resources.js', :to => 'extjra/main#view', :as => 'view', :format => 'js'
    get '/store/*resources.js', :to => 'extjra/main#store', :as => 'store', :format => 'js'
  end
end

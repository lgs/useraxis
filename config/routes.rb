ActionController::Routing::Routes.draw do |map|

  #map.resources :str2md5s, :collection => {:convert => :get}

  #map.resources :reports, :collection => {:population => :get}

  map.resources :lifestream, :controller => "home", :path_prefix => '/:account', :requirements => { :protocol => "http" }
  map.resources :feed_urls, :path_prefix => '/:account', :requirements => { :protocol => "http" }
  map.connect '/search', :controller => 'home', :action => 'search', :requirements => { :protocol => "http" }

  map.resources :usernames, :requirements => { :protocol => "http" }
  map.resources :services, :collection  => { :list => :get }, :requirements => { :protocol => "http" }
  map.resources :opml_metadatas, :requirements => { :protocol => "http" }

  map.resource :account, :requirements => { :protocol => "https" },
    :member => { :activate => :get, :password => :get, :change_password => :put } do |account|
    account.resources :personas do |personas|
      personas.resources :properties
    end
    account.resources :sites do |sites|
      sites.resources :release_policies
    end
    account.resource :yubikey_association
  end
  
  map.resource :session, :requirements => { :protocol => "https" }
  map.resource :password, :requirements => { :protocol => "http" }
  
  map.with_options :controller => 'passwords' do |pwd|
    pwd.forgot_password 'forgot_password', :action => 'new'
    pwd.reset_password  'reset_password/:id', :action => 'edit'
  end

  map.with_options :controller => 'sessions' do |sessions|
    sessions.login 'login', :action => 'new', :protocol => 'https'
    sessions.logout 'logout', :action => 'destroy', :protocol => 'https'
  end

  #map.with_options :controller => 'sessions' do |sessions|
    #sessions.login 'login', :action => 'new'
    #sessions.logout 'logout', :action => 'destroy'
  #end

  map.with_options :controller => 'server' do |server|
    server.formatted_server 'server.:format', :action => 'index'
    server.server 'server', :action => 'index'
    server.decide 'server/decide', :action => 'decide'
    server.proceed 'server/proceed', :action => 'proceed'
    server.complete 'server/complete', :action => 'complete'
    server.cancel 'server/cancel', :action => 'cancel'
    server.formatted_seatbelt_config 'server/seatbelt/config.:format', :action => 'seatbelt_config'
    server.formatted_seatbelt_state 'server/seatbelt/state.:format', :action => 'seatbelt_login_state'
  end

  map.with_options :controller => 'consumer' do |consumer|
    consumer.consumer 'consumer', :action => 'index', :protocol => 'http'
    consumer.consumer_start 'consumer/start', :action => 'start', :protocol => 'http'
    consumer.consumer_complete 'consumer/complete', :action => 'complete', :protocol => 'http'
  end

  map.with_options :controller => 'info' do |info|
    info.home '', :action => 'index', :protocol => 'http'
    info.help 'help', :action => 'help', :protocol => 'http'
    info.safe_login 'safe-login', :action => 'safe_login',:protocol => 'http'
    info.about 'about', :action => 'about', :protocol => 'http'
    info.contact 'contact', :action => 'contact', :protocol => 'http'
    info.oauth 'oauth', :action => 'oauth', :protocol => 'http'
  end

  map.with_options :controller => 'accounts' do |account|
    account.formatted_identity ':account.:format', :action => 'show', :protocol => 'https'
    account.identity ':account', :action => 'show', :protocol => 'https'
  end
  
end

ENV['RAILS_ENV'] ||= 'development'
ENV['GEM_PATH'] = '/home/useraxis/.gems:/usr/lib/ruby/gems/1.8'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.2.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

# Load custom config file for current environment
require 'yaml'
APP_CONFIG = YAML.load(File.read(RAILS_ROOT + "/config/app_config.yml"))[RAILS_ENV]

Rails::Initializer.run do |config|

  # Activate Observers
  config.active_record.observers = [:account_observer]

  # Your secret key for verifying cookie session data integrity.
  # If you change this key, all old sessions will become invalid!
  # Make sure the secret is at least 30 characters and all random, 
  # no regular words or you'll be exposed to dictionary attacks.
  config.action_controller.session = APP_CONFIG['session']
  
  # The internationalization framework can be changed to have another default locale (standard is :en) or more load paths.
  # All files from config/locales/*.rb,yml are added automatically.
  # config.i18n.load_path << Dir[File.join(RAILS_ROOT, 'my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
  
  # Mailer
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address => APP_CONFIG['mailer']['address'],
    :domain => APP_CONFIG['mailer']['domain'],
    :port => APP_CONFIG['mailer']['port'],
    :user_name => APP_CONFIG['mailer']['user_name'],
    :password => APP_CONFIG['mailer']['password'],
    :authentication => APP_CONFIG['mailer']['authentication'] }
  
  # Timezone
  config.time_zone = APP_CONFIG['time_zone'] || 'UTC'
  
  # Gems
  config.gem 'ruby-openid', :lib => 'openid', :version => '2.1.2'
  config.gem 'ruby-yadis', :lib => 'yadis', :version => '0.3.4'
  config.gem 'mocha', :version => '0.9.0'

  # My own
  config.gem 'gnip-gnip', :lib => 'gnip', :version => '2.0.6'
  config.gem 'RedCloth', :version => '>= 3.301', :source => 'http://code.whytheluckystiff.net/'
  config.gem 'dj2-postrank', :lib => 'postrank', :version => '0.9.1'

  config.gem 'mechanize', :version => '0.9.0'
  config.gem 'hpricot', :version => '0.7' #old '0.6.164'
  config.gem 'firewatir', :version => '1.6.2'
  config.gem 'scrubyt-experimental', :lib => 'scrubyt', :version => '0.1.1' 
  #config.gem 'skimr', :version => '0.4.1'

  # Debugging
  #config.gem 'ruby-debug', :version => '0.10.3'
 
end
# For mislav's will paginate plugin
gem 'mislav-will_paginate', '~> 2.2'
require 'will_paginate'

WhiteListHelper.tags.delete %w(object th)


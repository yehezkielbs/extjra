rails_root = File.expand_path('../test_app', __FILE__)
ENV['RAILS_ROOT'] = rails_root
ENV['RAILS_ENV'] = 'test'
require rails_root + '/config/environment'

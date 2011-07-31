puts 'Loading test app...'

rails_root = File.expand_path('../test_app', __FILE__)
ENV['RAILS_ROOT'] = rails_root
ENV['RAILS_ENV'] = 'test'
require rails_root + '/config/environment'

puts 'Preparing test database...'

# drop all tables
ActiveRecord::Base.connection.tables.each do |table|
  ActiveRecord::Base.connection.drop_table(table)
end

# migrate database
ActiveRecord::Migrator.migrate File.expand_path('../test_app/db/migrate/', __FILE__)

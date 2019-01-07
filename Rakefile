namespace :db do
  task :setup do
    require './lib/message'
    require 'data_mapper'

    DataMapper.setup(:default, "postgres://localhost/messageapp_")
    DataMapper.finalize
  end

  task :auto_migrate => :setup do
    DataMapper.auto_migrate!
    puts 'Migration successfully completed!'
  end

  task :auto_upgrade => :setup do
    DataMapper.auto_upgrade!
    puts 'Upgrade successfully completed!'
  end
end

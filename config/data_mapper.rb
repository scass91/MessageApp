require './lib/message'

DataMapper.setup(:default, "postgres://localhost/messageapp_#{ENV["ENV_RACK"]}")

DataMapper.finalize

DataMapper.auto_upgrade! if ENV['RACK_ENV'] == 'development'

DataMapper.auto_migrate! if ENV['RACK_ENV'] == 'test'

require './lib/message'

DataMapper.setup(:default, "postgres://localhost/messageapp_#{ENV["ENV_RACK"]}")

DataMapper.finalize

DataMapper.auto_migrate!

require "data_mapper"

class Message

  include DataMapper::Resource

    property :id,           Serial    # An auto-increment integer key
    property :message,      Text      # A text block, for longer string data.
    property :created_at,   DateTime  # A DateTime, for any date you might like.

end

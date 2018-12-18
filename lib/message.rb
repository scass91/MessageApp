class Message

  attr_reader :message, :time

  def initialize(message)
    @message = message
    @time = Time.now
  end

end

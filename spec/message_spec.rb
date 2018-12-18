require "./lib/message.rb"

describe "message" do
  it "it exists" do
    m = Message.new("Hello")
    expect(m.message).to eq("Hello")
  end

  # it "can be stored and accessed" do
  #   m = Message.new("Hello")
  #   expect(m.history.size).to eq 1
  # end



end

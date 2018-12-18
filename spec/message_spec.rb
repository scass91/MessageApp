require "./lib/message.rb"

describe "message" do
  it "it exists" do
    m = Message.new("Hello")
    expect(m.message).to eq("Hello")
  end

end

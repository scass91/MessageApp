require "./lib/message.rb"

describe "message" do
  it "it exists" do
    m = Message.new("Hello")
    expect(m.message).to eq("Hello")
  end

  it "contains a time" do
    m = Message.new("Hello")
    expect(m.time.strftime("%H:%M")).to eq(Time.now.strftime("%H:%M"))
  end
end

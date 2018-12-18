require"./lib/history.rb"

  describe 'previous messages are stored and can be viewed' do
   it "it stores historic messages" do
     history = History.new(history)
     expect(history.history).to eq([])
   end
end

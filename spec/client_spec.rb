RSpec.describe RubyVoluum::Client do
  let(:client) do
    VCR.use_cassette('login_with_email') do
      RubyVoluum::Client.new(email: 'good@good.com', password: '12345678')
    end
  end

  describe '#initialize' do
    it 'returns a RubyVoluum::Client instance' do
      expect(client).to be_instance_of RubyVoluum::Client
    end
  end

  describe '#report' do
    subject { client.report }

    it 'returns a RubyVoluum::Report instance' do
      expect(subject).to be_instance_of RubyVoluum::Report
    end
  end
end

require 'omniauth/surveygizmo'

describe OmniAuth::Strategies::Surveygizmo do

  subject do
    OmniAuth::Strategies::Surveygizmo.new(nil, {})
  end

  describe '#client' do

    it 'has correct surveymonkey api site' do
      subject.options.client_options.site.should == ('http://restapi.surveygizmo.com')
    end

    it 'has correct request token path' do
      subject.options.client_options.request_token_path.should == ('/head/oauth/request_token')
    end

    it 'has correct access token path' do
      subject.options.client_options.access_token_path.should == ('/head/oauth/access_token')
    end

    it 'has correct authorize url' do
      subject.options.client_options.authorize_url.should == ('http://restapi.surveygizmo.com/head/oauth/authenticate')
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      subject.callback_path.should == ('/auth/surveygizmo/callback')
    end
  end
end

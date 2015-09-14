require "omniauth/surveygizmo/version"
require "omniauth/strategies/oauth"

module OmniAuth
  module Strategies
    class Surveygizmo < OmniAuth::Strategies::OAuth

      option :client_options, {
        :site       => "http://restapi.surveygizmo.com",
        :request_token_path => "/head/oauth/request_token",
        :access_token_path => "/head/oauth/access_token",
        :authorize_url => "http://restapi.surveygizmo.com/head/oauth/authenticate"
      }
    end
  end
end

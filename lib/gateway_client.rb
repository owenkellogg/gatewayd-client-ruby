require "faraday"
require "openssl"
require "json"

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

module Gateway
  class Client
    def initialize ip, username, password
      @connection = Faraday.new "https://#{ip}"
      @connection.basic_auth username, password
    end

    def get uri, params={}
      response = @connection.get uri, params
      begin
        JSON.parse response.body
      rescue
        puts "invalid json:: #{response}"
        response
      end
    end

    def post uri, params
      response = @connection.post uri, params
      begin
        JSON.parse response.body
      rescue
        puts "invalid json:: #{response}"
        response
      end
    end

    def get_users params={}
      get '/v1/users', params
    end

    def get_user user_id
      get "/v1/users/#{user_id}"
    end

    def get_external_transactions params={}
      get '/v1/external_transactions', params
    end

    def get_external_accounts params
      get '/v1/external_accounts', params
    end

    def get_ripple_addresses params
      get '/v1/ripple_addresses', params
    end

    def get_ripple_transactions params
      get '/v1/ripple_transactions', params
    end
  end
end

require "gateway_client/version"
require "faraday"

module GatewayClient
  class Client
    def initialize ip, username, password
      @connection = Faraday.new "https://#{ip}"
      @connection.basic_auth username, password
    end
    
    def get_users
      response = @connection.get '/v1/users'
      response.body
    end
    
    def get_external_transactions
      response = @connection.get '/v1/external_transactions'
      response.body
    end
  
    def get_external_accounts
      response = @connection.get '/v1/external_accounts'
      response.body
    end

    def get_ripple_addresses
      response = @connection.get '/v1/ripple_addresses'
      response.body
    end

    def get_ripple_transactions
      response = @connection.get '/v1/ripple_transactions'
      response.body
    end
  end
end

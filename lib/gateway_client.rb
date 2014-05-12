require "gateway_client/version"
require "faraday"

module GatewayClient
  class Client
    def initialize ip username, password
      @connection = Faraday.new "https://#{ip}"
      @connection.basic_auth username, password
    end
    
    def get_users
    end
    
    def get_external_transactions
    end
  
    def get_external_accounts
    end

    def get_ripple_addresses
    end

    def get_ripple_transactions
    end
  end
end

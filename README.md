# Gatewayd Client Ruby

This library is a ruby gem for interacting with a Ripple
Gatewayd daemon / api server.

After setting up a gatewayd server, use its public ip
address, admin username and api key to instantiate a new
gateway client object in ruby, and interact with the gatewayd
http api at your will.

### Usage

    client = Gatewayd::Client.new '127.0.0.1', '<insert api key>', ssl: true

    client.get '/v1/payments/incoming'

    client.post '/v1/payments/outgoing', {
      address: 'stevenzeiler',
      amount: 10,
      currency: 'XAG'
    }

    client.get_ripple_transactions

    client.get_ripple_addresses

    client.get_external_accounts

    client.get_external_transactions


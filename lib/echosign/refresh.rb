module Echosign
  class Refresh < Hash

    include Validatable

    # Builds a Credentials object
    #
    # @param app_id [String] Application key
    # @param app_secret [String] Application secret
    # @param api_key [String] API Key
    # @param email [String] User email 
    # @param password [String] User password
    # @return [Echosign::Credentials] Echosign credentials
    def initialize(client_id, client_secret, grant_type, refresh_token)

      merge!(
      {
        :client_id => client_id,
        :client_secret => client_secret,
        :refresh_token => refresh_token,
        :grant_type => "refresh_token"
      }
      )
    end

  end
end


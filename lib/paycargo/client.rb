require "faraday"
require "faraday_middleware"

module Paycargo
  class Client
    BASE_URL = "https://api.paycargo.com"

    attr_reader :token, :adapter

    def initialize(token:, adapter: Faraday.default_adapter)
      @token = token || ENV["JWT_TOKEN"]
      @adapter = adapter
    end

    def transactions
      TransactionsResource.new(self)
    end

    def payer
      PayerResource.new(self)
    end

    def reports
      ReportsResource.new(self)
    end

    def connection
      @connection ||= Faraday.new do |con|
        con.url_prefix = BASE_URL
        con.request :json
        con.response :json, content_type: "application/json"
        con.adapter adapter
      end
    end
  end
end

module Paycargo
  class Resource
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def get_request(url, params: {}, headers: {})
      handle_response client.connection.get(url, params, default_headers.merge(headers))
    end

    def post_request(url, body:, headers: {})
      handle_response client.connection.post(url, body, default_headers.merge(headers))
    end

    def patch_request(url, body:, headers: {})
      handle_response client.connection.patch(url, body, default_headers.merge(headers))
    end

    def put_request(url, body:, headers: {})
      handle_response client.connection.put(url, body, default_headers.merge(headers))
    end

    def delete_request(url, params: {}, headers: {})
      handle_response client.connection.delete(url, params, default_headers.merge(headers))
    end

    def default_headers
      { authorization: client.token }
    end

    def handle_response(response)
      #message = response.body["message"]

      case response.status
        when 401
            raise Error, "#{response.body}"
        when 404
            raise Error, "#{response.body}"
        when 429
            raise Error, "#{response.body}"
        when 500
            raise Error, "#{response.body}"
      end

      response
    end

  end
end

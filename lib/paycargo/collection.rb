module Paycargo
  class Collection
    attr_reader :data

    def self.from_response(response, type:)
      body = response.body
      new(
        data: body["data"].map{ |attrs| type.new(attrs) }
      )
    end

    def initialize(data:)
      @data = data
    end
  end
end

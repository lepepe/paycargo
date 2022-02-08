module Paycargo
  class VendorsResource < Resource
    # List all vendors:w
    def list(**params)
      Collection.from_response get_request("vendors", params: params), type: Vendor
    end

    # Get vendor by id
    def retreive(id, **params)
      Vendor.new get_request("vendor/#{id}", params: params).body
    end
  end
end

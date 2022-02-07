module Paycargo
  class PayerResource < Resource

    # This endpoint retrieves the following data, per payer, per payment method:
    # - get funds availability
    # - get funds limit
    def funds(id)
      get_request("payer/funds/#{id}").body
    end

  end
end

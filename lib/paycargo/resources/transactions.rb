module Paycargo
  class TransactionsResource < Resource

    #GET all Transactions for a client.
    #PARAMS
    #- page
    #- count
    def list(**params)
      Collection.from_response get_request("transactions", params: params), type: Transaction
    end

    #GET a transaction by id (must update token)
    def retreive(id, **params)
      Transaction.new get_request("transaction/#{id}", params: params).body
    end

    #POSTing a new transaction
    #BODY
    #- payerId: 281302
    #- vendorId: 279546
    #- type: Other
    #- subcategory: I-432188
    #- number: 929-83294551
    #- departureDate: 2018-04-01
    #- arrivalDate: 2018-04-24
    #- total: 100
    #- notes: This is a test for paycargo credit new flow
    #- userId: 778042
    #- direction: Outbound
    #- parent: dsgfdg
    #- paymentDueDate: 2018-04-24
    #- hasArrived: Y
    #- customerRefNumber: 63045050500000
    #- shipperRefNumber: tdfgfdgfd
    #- paymentType: PAYCARGO_CREDIT
    def create(**attributes)
      Transaction.new post_request("transaction", body: attributes).body
    end

    #PUT Approve a Transaction
    def approve(id)
      Transaction.new put_request("transaction/pay/#{id}").body
    end

    #Proof Transaction
    #PUTing a transaction to 'proof'
    def proof(id)
      Transaction.new put_request("transaction/proof/#{id}").body
    end

    #GETs a transaction by number (must update token)
    #PARAMS
    #- number
    #- vendorId
    def by_number(**params)
      Transaction.new get_request("transaction/number/", params: params).body
    end

    #GETing a transaction's history
    def history(id, **params)
      get_request("transaction/history/#{id}", params: params).body
    end

    #Get Fees for transaction. paymentType and transactionId OR paymentType
    #and vendorId and payerId are required to getFees
    def fees(**params)
      get_request("transaction/fees", params: params).body
    end

  end
end

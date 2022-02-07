module Paycargo
  class ReportsResource < Resource

    #Get Payer ACH Report
    # PARAMS
    #- fleet_id: 283046
    #- Account fleet id ( payerId)

    #- startDate: 10/01/2020
    #Start Date in MM/DD/YYYY format

    #- endDate: 11/01/2020
    #End Date in MM/DD/YYYY format

    #- client_id: 284347
    #Account client id

    #- report_action_name: getACHReconciliation
    #PayCargo report type name, for ACH report : getACHReconciliation

    #- type: SHIPPER
    #Account type : SHIPPER or CARRIER

    #- accountName: all
    #- Account name of branch if any. Apply "all" to get data from branches for HQ

    #- fleetLimit: fleet_id
    #- providerLimit: provier_id
    def payer(**params)
      get_request("reports/singleReport", params: params).body
    end

  end
end

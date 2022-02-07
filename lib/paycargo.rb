# frozen_string_literal: true

require_relative "paycargo/version"

module Paycargo
  autoload :Client, "paycargo/client"
  autoload :Collection, "paycargo/collection"
  autoload :Error, "paycargo/error"
  autoload :Object, "paycargo/object"
  autoload :Resource, "paycargo/resource"

  autoload :TransactionsResource, "paycargo/resources/transactions"
  autoload :PayerResource, "paycargo/resources/payer"
  autoload :ReportsResource, "paycargo/resources/reports"

  autoload :Transaction, "paycargo/objects/transaction.rb"
  autoload :Payer, "paycargo/objects/payer.rb"
  autoload :Report, "paycargo/objects/report.rb"
end

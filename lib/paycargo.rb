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
  autoload :UsersResource, "paycargo/resources/users"
  autoload :VendorsResource, "paycargo/resources/vendors"

  autoload :Transaction, "paycargo/objects/transaction.rb"
  autoload :Payer, "paycargo/objects/payer.rb"
  autoload :Report, "paycargo/objects/report.rb"
  autoload :User, "paycargo/objects/user.rb"
  autoload :Vendor, "paycargo/objects/vendor.rb"
end

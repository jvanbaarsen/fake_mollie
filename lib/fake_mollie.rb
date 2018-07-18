require "securerandom"
require "fake_mollie/version"
require "fake_mollie/fakes/base"
require "fake_mollie/fakes/customer"

module FakeMollie
  @@customers = {}

  def self.create_mandate(customer_id:)
    mandate = SecureRandom.hex(5)
    @@customers[customer_id].mandates << mandate
    mandate
  end

  def self.create_subscription(customer_id:)
    # @@customers[customer_id].subscriptions << FakeSubscription.new(customer_id: customer_id)
  end

  def self.create_customer(id: SecureRandom.hex(10))
    @@customers[id] = Fakes::Customer.new(id: id)
  end

  def self.customers
    @@customers
  end

  def self.reset!
    @@customers = {}
  end
end

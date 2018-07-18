module FakeMollie
  class Customer
    def self.create(name:, email:)
      customer = Fakes::Customer.new(name: name, email: email)
      FakeMollie.customers[customer.id] = customer
      customer
    end
  end
end

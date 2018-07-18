module FakeMollie
  class Customer
    class Mandate
      def self.all(customer_id:)
        FakeMollie.customers[customer_id].mandates
      end
    end
  end
end

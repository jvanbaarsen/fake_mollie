require "test_helper"
require "fake_mollie/mandate"

class MandateTest < Minitest::Test
  def test_all_returns_all_mandates_for_customer
    customer = FakeMollie.create_customer
    mandate = FakeMollie.create_mandate(customer_id: customer.id)

    mandates = FakeMollie::Customer::Mandate.all(customer_id: customer.id)

    assert_includes mandates, mandate
  end
end

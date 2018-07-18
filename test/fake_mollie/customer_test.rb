require "test_helper"
require "fake_mollie/customer"

class CustomerTest < Minitest::Test
  def test_create_should_create_a_customer_with_given_info
    c = FakeMollie::Customer.create(name: "myname", email: "myemail")
    assert_equal "myname", c.name
    assert_equal "myemail", c.email

    assert_equal FakeMollie.customers[c.id], c
  end
end

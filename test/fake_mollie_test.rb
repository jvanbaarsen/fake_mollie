require "test_helper"

class FakeMollieTest < Minitest::Test
  def test_customers_returns_hash_with_all_customers
    assert_equal Hash.new, FakeMollie.customers
    3.times { FakeMollie.create_customer }

    assert_equal 3, FakeMollie.customers.count
  end

  def test_reset_sets_everything_to_empty
    3.times { FakeMollie.create_customer }

    refute_equal Hash.new, FakeMollie.customers
    FakeMollie.reset!

    assert_equal Hash.new, FakeMollie.customers
  end

  def test_create_customer_should_build_a_new_customer
    customer_without_id = FakeMollie.create_customer
    refute_nil customer_without_id.id
    assert customer_without_id.is_a?(FakeMollie::Fakes::Customer)

    customer_with_id = FakeMollie.create_customer(id: "custom_id")
    assert_equal "custom_id", customer_with_id.id
  end

  def test_create_mandate_should_add_new_mandate_to_customer
    customer = FakeMollie.create_customer

    assert_equal 0, customer.mandates.count

    2.times { FakeMollie.create_mandate(customer_id: customer.id) }

    assert_equal 2, customer.mandates.count
  end
end

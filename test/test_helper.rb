require "minitest/autorun"
require "fake_mollie"

class Minitest::Test
  def setup
    super
    FakeMollie.reset!
  end
end

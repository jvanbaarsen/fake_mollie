module FakeMollie
  module Fakes
    class Customer < Base
      attr_accessor :id, :name, :email, :mandates, :subscriptions

      def initialize(args = {})
        super

        @id ||= SecureRandom.hex(10)
        @mandates ||= []
        @subscriptions ||= []
      end
    end
  end
end

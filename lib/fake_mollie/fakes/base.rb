module FakeMollie
  module Fakes
    class Base
      def initialize(args)
        args.each do |key, value|
          instance_variable_set("@#{key}", value)
        end
      end
    end
  end
end

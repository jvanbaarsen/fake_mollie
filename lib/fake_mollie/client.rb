module FakeMollie
  class Client
    def self.with_api_key(api_key)
      yield
    end
  end
end

require "shmoney/version"

module Shmoney
  class Money
    attr_reader :amount, :currency
    @@rates = {}

    def self.conversion_rates(base_currency, rates={})
      @@rates[base_currency] = rates
    end

    def self.rates
      @@rates
    end

    def initialize(amount, currency)
      @amount = amount
      @currency = currency
    end

    def inspect
      "#{@amount} #{@currency}"
    end

    def convert_to(final_currency)
      # Pending
    end
  end
end

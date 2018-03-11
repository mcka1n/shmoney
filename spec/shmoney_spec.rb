require "spec_helper"

RSpec.describe Shmoney do
  it "has a version number" do
    expect(Shmoney::VERSION).not_to be nil
  end

  it "configures currency rates with respect to a base currency (EUR)" do
    eur_rates = {"GTQ"=>9.09, "USD"=>1.23}
    Shmoney::Money.conversion_rates('EUR', eur_rates)

    expect(Shmoney::Money.rates).to eq({"EUR"=>eur_rates})
  end

  it "initialize new Shmoney::Money objects" do
    fifty_eur = Shmoney::Money.new(50, 'EUR')

    expect(fifty_eur.class).to be(Shmoney::Money)
    expect(fifty_eur.amount).to eq(50)
    expect(fifty_eur.currency).to eq('EUR')
    expect(fifty_eur.inspect).to eq('50 EUR')
  end
end

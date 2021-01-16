# frozen_string_literal: true

Sande = Struct.new(:taste, :toppings)
RSpec.describe 'an ideial sandwish' do
  let(:sande) { Sande.new('delicious', []) }
  it 'is good' do
    taste = sande.taste

    expect(taste).to eq 'delicious'
  end

  it 'lets me add some toppings' do
    sande.toppings << 'cheese'
    toppings = sande.toppings
    expect(toppings).not_to be_empty
  end
end

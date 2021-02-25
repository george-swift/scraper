require_relative '../lib/scrape_farfetch'

describe Designers do
  let(:designer) { Designers.new }

  describe '#brand_names' do
    context 'when method is called on instance' do
      it 'returns an array of strings' do
        expect(designer.brand_names).not_to be nil
      end

      it 'returns a copy of self with all nil elements removed' do
        expect(designer.brand_names.include? nil).to be false
      end
    end
  end

  describe '#description' do
    context 'when method is called on instance' do
      it 'always returns an array of strings' do
        expect(designer.description.any?(Integer)).to be false
      end

      it 'returns an array with all nil elements removed' do
        expect(designer.description.include? nil).to be false
      end
    end
  end

  describe '#price' do
    let(:block) { proc { |p| p =~ /^[\W\d*]/ }}
    context 'when method is called on instance' do
      it 'returns an array of strings' do
        expect(designer.price).not_to be nil
      end

      it 'contains stringified prices in dollars' do
        expect(designer.price.any?(&block)).to be true
      end

      it 'returns a copy of self with all nil elements removed' do
        expect(designer.price.include? nil).to be false
      end
    end
  end
end
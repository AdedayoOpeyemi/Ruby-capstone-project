require_relative '../lib/trailing_space.rb'

# rubocop: disable Style/MixinUsage
include Trailing
# rubocop: enable Style/MixinUsage

describe Trailing do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:cont) { File.readlines('./style.css') }

  describe '#trailing_space_check' do
    context 'When the parameters passed in are the line, index of line, empty array' do
      it 'It returns nil' do
        expect(trailing_space_check(cont[149], 149)).to eq(nil)
      end
    end

    context 'When the there is a trailing space at the end of a line' do
      it 'It returns an error message' do
        expect(trailing_space_check(cont[143], 143)).to eq("\e[0;34;49mTrailing white space found on line 144\e[0m")
      end
    end

    context 'When the there is no trailing space at the end of a line' do
      it 'It returns nil' do
        expect(trailing_space_check(cont[144], 144)).to eq(nil)
      end
    end
  end
end

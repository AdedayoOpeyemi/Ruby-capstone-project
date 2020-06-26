require_relative '../lib/multiple_space.rb'

# rubocop: disable Style/MixinUsage
include MultipleSpace
# rubocop: enable Style/MixinUsage

describe MultipleSpace do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:cont) { File.readlines('./style.css') }

  describe '#multiple_space_check' do
    context 'When the parameters passed in are the line, index of line, empty array' do
      it 'It returns an array' do
        expect(multiple_space_check(cont[34], 34)).to eq(nil)
      end
    end

    context 'When all right parameters are passed in and there is more than one space between a value and comma' do
      it 'returns an array with the error message' do
        expect(multiple_space_check(cont[124], 124)).to eq("\e[0;33;49mMultiple spaces found on line 125\e[0m")
      end
    end

    context 'When all right parameters are passed in and there is more than one space between 2 values of a property' do
      it 'returns an array with the error message' do
        expect(multiple_space_check(cont[135], 135)).to eq("\e[0;33;49mMultiple spaces found on line 136\e[0m")
      end
    end

    context 'Multiple spaces between a CSS selector and opening curly bracket' do
      it 'It should push an error message into the error_array' do
        expect(multiple_space_check(cont[139], 139)).to eq("\e[0;33;49mMultiple spaces found on line 140\e[0m")
      end
    end
  end
end

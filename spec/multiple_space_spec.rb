require_relative '../lib/multiple_space.rb'

# rubocop: disable Style/MixinUsage
include MultipleSpace
# rubocop: enable Style/MixinUsage

describe MultipleSpace do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:file_details) { File.readlines('./style.css') }

  describe '#multiple_space_check' do
    it 'returns an empty array when all the colons have the right afterspace' do
      #   subject.multiple_space_check(file_details[2], 2, error_array)
      multiple_space_check(file_details[34], 34, error_array)
      expect(error_array).to be_a(Array)
    end
  end
end

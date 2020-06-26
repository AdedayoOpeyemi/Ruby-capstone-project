require_relative '../lib/after_colon.rb'
# rubocop: disable Style/MixinUsage
include AfterColon
# rubocop: enable Style/MixinUsage

describe AfterColon do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:cont) { File.readlines('./style.css') }

  describe '#after_colon_check' do
    it 'returns nil when all the colons on line has the right afterspace' do
      expect(AfterColon.after_colon_check(cont[34], 34)).to eql(nil)
    end

    it 'It returns an error message when the colons do not have the right afterspace' do
      AfterColon.after_colon_check(cont[136], 136)
      expect(AfterColon.after_colon_check(cont[136], 136)).to eq("\e[0;36;49mNo space after colon on line 137\e[0m")
    end

    it 'It returns nil if the line passed conly contains a psuedocode' do
      expect(AfterColon.after_colon_check(cont[113], 113)).to eq(nil)
    end

    it 'It returns an error if there is no space after the colon' do
      AfterColon.after_colon_check(cont[110], 110)
      expect(AfterColon.after_colon_check(cont[110], 110)).to eq("\e[0;36;49mNo space after colon on line 111\e[0m")
    end
  end
end

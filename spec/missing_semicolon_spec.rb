require_relative '../lib/missing_semicolon.rb'

# rubocop: disable Style/MixinUsage
include SemiColon
# rubocop: enable Style/MixinUsage

describe SemiColon do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:cont) { File.readlines('./style.css') }

  describe '#semi_colon_check' do
    context 'When the parameters passed in are the line, index of line, empty array' do
      it 'It returns an array' do
        expect(missing_semicolon_check(cont[34], 34)).to eq(nil)
      end
    end

    context 'When the line passed in does not have a cosing semicolon at the end' do
      it 'It returns an array' do
        expect(missing_semicolon_check(cont[149], 149)).to eq("\e[0;36;49mMissing semicolon on line 150\e[0m")
      end
    end

    context 'When the pline passed in only has a closing curly bracket' do
      it 'It returns an array' do
        expect(missing_semicolon_check(cont[152], 152)).to eq(nil)
      end
    end
  end
end

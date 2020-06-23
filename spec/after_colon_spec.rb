# require '/home/opeyemi/Desktop/Microverse-Projects/Ruby-capstone-project/lib/after_colon.rb'
require_relative '../lib/after_colon.rb'
# require_relative 'spec_helper.rb'


describe "sum method" do
    it "returns the sum of 2 numbers" do
        expect( 2+3).to eql(5)
    end
end

describe AfterColon do
    let(:file) { './style.css' }
    let(:error_array) { [] }
    let(:file_details) {File.readlines('./style.css' )}
  
  describe '#after_colon_check' do
  
    it 'returns an empty array when all the colons have the right afterspace' do
     AfterColon.after_colon_check(file_details[34], 34, error_array)

    #   after_colon_check(file_details[34], 34, error_messages)
    #   expect(error_messages).to be_a(Array)
        # file_details.each_with_index { |line, index| after_colon_check(line_content, line_index, error_messages) }end.to be_a_kind_of(Array)
        expect(error_messages).to eql([])
    end
end
end

describe "sum method" do
    it "returns the sum of 2 numbers" do
        expect( 2+3).to eql(5)
    end
end
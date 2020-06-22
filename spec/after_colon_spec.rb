# require '/home/opeyemi/Desktop/Microverse-Projects/Ruby-capstone-project/lib/after_colon.rb'
require_relative '../lib/after_colon.rb'


RSpec.describe AfterColon do
  
  
  describe '#after_colon_check' do
  let(:file) { './style.css' }
    it 'returns an empty array when all the colons have the right afterspace' do
        
      file_details = File.readlines('./style.css' )
      error_array = []
      puts file_details[34]
      print error_array
      after_colon_check(file_details[34], 34, error_messages)

    #   after_colon_check(file_details[34], 34, error_messages)
    #   expect(error_messages).to be_a(Array)
        # file_details.each_with_index { |line, index| after_colon_check(line_content, line_index, error_messages) }end.to be_a_kind_of(Array)
        expect(error_messages).to eql([])
    end
end
end
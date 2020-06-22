#!/usr/bin/ruby

require_relative '../lib/trailing_space.rb'
require_relative '../lib/multiple_space.rb'
require_relative '../lib/zero_unit.rb'
require_relative '../lib/empty_comment.rb'
require_relative '../lib/after_colon.rb'
require_relative '../lib/missing_semicolon.rb'

# rubocop: disable Style/MixinUsage
include Trailing
include MultipleSpace
include ZeroUnit
include EmptyComment
include AfterColon
include SemiColon
# rubocop: enable Style/MixinUsage
content = File.readlines(ARGV[0])
linter_errors = []
puts content[content.size]

content.each_with_index do |line_content, line_index|
  trailing_space(line_content, line_index, linter_errors)
  multiple_space_check(line_content, line_index, linter_errors)
  after_colon_check(line_content, line_index, linter_errors)
  empty_comment_check(line_content, line_index, linter_errors)
  zero_unit(line_content, line_index, linter_errors)
  missing_semicolon(line_content, line_index, linter_errors)
end

puts linter_errors

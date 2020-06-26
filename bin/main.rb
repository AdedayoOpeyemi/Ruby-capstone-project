#!/usr/bin/ruby

require_relative '../lib/linter.rb'

content = File.readlines(ARGV[0])
checker = LinterApp.new
error_array = []

content.each_with_index do |line_content, line_index|
  checker.lint_action(checker.after_colon_check(line_content, line_index), error_array)
  checker.lint_action(checker.empty_comment_check(line_content, line_index), error_array)
  checker.lint_action(checker.missing_semicolon_check(line_content, line_index), error_array)
  checker.lint_action(checker.multiple_space_check(line_content, line_index), error_array)
  checker.lint_action(checker.trailing_space_check(line_content, line_index), error_array)
  checker.lint_action(checker.zero_unit_check(line_content, line_index), error_array)
end
puts error_array
puts "#{error_array.length} errors were found, please fix".colorize(:green)

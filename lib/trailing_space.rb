require 'colorize'

module Trailing
  private

  def trailing_space(line_content, line_index, error_messages)
    matching_condition = /\s+\n/
    return unless matching_condition =~ line_content

    error_messages << "Trailing white space found on line #{line_index + 1}".colorize(:blue)
  end

  public

  def trailing_space_check(line_content, line_index, error_messages)
    trailing_space(line_content, line_index, error_messages)
  end
end

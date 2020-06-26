require 'colorize'

module Trailing
  def trailing_space_check(line, index)
    matching_condition = /\s+\n/
    return unless matching_condition =~ line

    "Trailing white space found on line #{index + 1}".colorize(:blue)
  end
end

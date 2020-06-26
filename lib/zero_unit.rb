require 'colorize'

module ZeroUnit
  def zero_unit_check(line, index)
    matching_condition = /[\:\s]+0{1}+\w/
    return unless matching_condition =~ line

    "Unit assigned to Zero value on line #{index + 1}".colorize(:magenta)
  end
end

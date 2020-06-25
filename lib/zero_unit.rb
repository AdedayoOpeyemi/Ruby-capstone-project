require 'colorize'

module ZeroUnit
  def zero_unit_check(line, index, error)
    matching_condition = /[\:\s]+0{1}+\w/
    return unless matching_condition =~ line

    error << "Unit assigned to Zero valued variable on line #{index + 1}".colorize(:magenta)
  end
end

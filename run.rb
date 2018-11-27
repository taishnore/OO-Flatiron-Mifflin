require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

class Array
  def average
    inject(&:+) / size
  end
end
#Test your code here
amanda = Manager.new("Amanda", "Sales", 24)
jason = Manager.new("Jason", "Full Cycle", 26)

taimur = Employee.new("Taimur", 100000, amanda)
jordan = Employee.new("Jordan", 105000, jason)
daen = Employee.new("Daeniel", 95000, jason)


binding.pry
puts "done"

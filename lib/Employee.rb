class Array
  def average
    inject(&:+) / size
  end
end

class Employee

  attr_reader :name, :salary, :manager

  @@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(sample_salary)
    self.all.select { |employee| employee.salary > sample_salary }
  end

  def self.find_by_department(department)
    self.all.find do |employee|
      if employee.manager.department == department
    end
  end

  def tax_bracket
    Employee.all.select do |employee|
      employee.salary.between?(@salary - 1000, @salary + 1000)
    end
  end

end

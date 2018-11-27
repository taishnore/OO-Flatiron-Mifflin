class Array
  def average
    inject(&:+) / size
  end
end

class Manager

  attr_reader :name, :age, :department

  @@all = []
  # @my_employees = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    # @my_employees =
    Employee.all.select do |employee|
      employee.manager == self
    end
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self)
    # binding.pry
  end

  def self.all_departments
    self.all.map { |manager| manager.department }
  end

  def self.average_age
    age_array = self.all.map { |manager| manager.age }
    age_array.average.to_f
  end

end

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    self.grade > other_student.grade
  end

  protected

  attr_reader :name, :grade 
end

james = Student.new('James', 75)
john = Student.new('John', 50)

puts "Well done!" if james.better_grade_than?(john)

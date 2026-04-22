# frozen_string_literal: true

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
    grade > student.grade
  end

  protected

  attr_reader :name, :grade
end

joe = Student.new('Joe', 75)
paul = Student.new('Paul', 50)

p joe.better_grade_than?(paul) ? 'Well done!' : 'Keep studying'

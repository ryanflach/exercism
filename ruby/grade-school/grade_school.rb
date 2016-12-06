class School
  def initialize
    @roster = Hash.new([])
  end

  def students(grade)
    roster[grade].sort
  end

  def add(student_name, grade)
    if roster[grade].empty?
      roster[grade] = [student_name]
    else
      roster[grade] << student_name
    end
  end

  def students_by_grade
    roster.map do |grade, students|
      { grade: grade, students: students.sort }
    end.sort_by { |grade_data| grade_data[:grade] }
  end

  private

  attr_reader :roster
end

module BookKeeping
  VERSION = 3
end

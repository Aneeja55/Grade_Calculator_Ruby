class StudentResult
  def initialize
    @marks = []
  end

  def get_marks
    print "Enter number of subjects: "
    n = gets.chomp.to_i

    for i in 1..n
      print "Enter mark for subject #{i}: "
      mark = gets.chomp.to_i
      @marks.push(mark)
    end
  end

  def calculate
    sum = 0

    @marks.each do |m|
      sum += m
    end

    avg = sum / @marks.length

    puts "\nResult"
    puts "Total Marks = #{sum}"
    puts "Average = #{avg}"

    if avg >= 90
      puts "Grade = A"
    elsif avg >= 75
      puts "Grade = B"
    elsif avg >= 50
      puts "Grade = C"
    else
      puts "Grade = Fail"
    end
  end
end

student = StudentResult.new

student.get_marks
student.calculate

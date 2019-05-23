class School
  attr_accessor :roster
  
  def initialize(name)
    @roster= {}
    @school_name = name
  end
  
  def add_student(student_name, grade)
    if @roster[grade] == nil 
      # if roster does not already have a key of grade
      @roster[grade] = [student_name]
      # creates the key grade and adds name as the first element
    else 
      @roster[grade] << student_name 
      # if grade array already exist, just add new name
      
      ## another option - @roster[grade] ||= []
      ##                  @roster[grade] << name
      
 end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, names|
      names.sort!
      ## even though each returns originally array, sort is destructive and changed original, you can also create an empty new array at start and then 
      ## sorted_array = {}
      ## @roster.each do |grade, names|
      ## sorted_array[grade] = names.sort
      ## end
      ## sorted_array
        
  end
end
  
end

 

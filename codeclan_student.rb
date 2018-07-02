# Creating a Student class that takes in a student name and a cohort as strings.

class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

# name getter method.
  def name
    return @name
  end

# cohort getter method.
  def cohort
    return @cohort
  end

# name setter method taking a new name as a string.
  def set_name(new_name)
    @name = new_name
  end

# cohort setter method taking a new cohort as a string.
  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

# method that allows the student to talk and state their name based on initialize @name.
  def talk
    return "Hi, my name is #{@name}"
  end

# method that allows student to return favourite language based on given argument as a string.
  def fav_language(language)
    return "I love #{language}"
  end

end

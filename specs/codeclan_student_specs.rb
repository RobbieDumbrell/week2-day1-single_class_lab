require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestStudent < MiniTest::Test

# test to check name getter.
  def test_check_name
    student = Student.new("Robbie", "E23")
    assert_equal("Robbie", student.name)
  end

# test to check cohort getter.
  def test_check_cohort
    student = Student.new("Robbie", "E23")
    assert_equal("E23", student.cohort)
  end

# test to check name setter.
  def test_set_name
    student = Student.new("Robbie", "E23")
    student.set_name("Marcin")
    assert_equal("Marcin", student.name)
  end

# test to check cohort setter.
  def test_set_cohort
    student = Student.new("Robbie", "E23")
    student.set_cohort("E22")
    assert_equal("E22", student.cohort)
  end

# test to check functionality of talk method.
  def test_talk
    student = Student.new("Robbie", "E23")
    assert_equal("Hi, my name is Robbie", student.talk)
  end

# test to check functionality of fav_language method, with specified language as argument.
  def test_fav_language
    student = Student.new("Robbie", "E23")
    fav_language = student.fav_language("Ruby")
    assert_equal("I love Ruby", fav_language)
  end


end

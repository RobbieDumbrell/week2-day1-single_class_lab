require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestStudent < MiniTest::Test

  def test_check_name
    student = Student.new("Robbie", "E23")
    assert_equal("Robbie", student.name)
  end

  def test_check_cohort
    student = Student.new("Robbie", "E23")
    assert_equal("E23", student.cohort)
  end

  def test_set_name
    student = Student.new("Robbie", "E23")
    student.set_name("Marcin")
    assert_equal("Marcin", student.name)
  end

  def test_set_cohort
    student = Student.new("Robbie", "E23")
    student.set_cohort("E22")
    assert_equal("E22", student.cohort)
  end

  def test_talk
    student = Student.new("Robbie", "E23")
    assert_equal("Hi, my name is Robbie", student.talk)
  end

  def test_fav_language
    student = Student.new("Robbie", "E23")
    fav_language = student.fav_language("Ruby")
    assert_equal("I love Ruby", fav_language)
  end


end

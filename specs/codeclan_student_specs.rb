require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestStudent < MiniTest::Test

  def test_check_name
    student = Student.new("Robbie", "E23")
    name = student.name
    assert_equal("Robbie", name)
  end

  def test_check_cohort
    student = Student.new("Robbie", "E23")
    cohort = student.cohort
    assert_equal("E23", cohort)
  end

  def test_set_name
    student = Student.new("Robbie", "E23")
    name = student.set_name("Marcin")
    assert_equal("Marcin", student.name)
  end

  def test_set_cohort
    student = Student.new("Robbie", "E23")
    cohort = student.set_cohort("E22")
    assert_equal("E22", student.cohort)
  end

  def test_talk
    student = Student.new("Robbie", "E23")
    talk = student.talk
    assert_equal("Hi, my name is Robbie", talk)
  end

  def test_fav_language
    student = Student.new("Robbie", "E23")
    fav_language = student.fav_language("Ruby")
    assert_equal("My fav language is Ruby", fav_language)
  end


end

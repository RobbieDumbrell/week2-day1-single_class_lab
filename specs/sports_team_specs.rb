require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestTeam < MiniTest::Test

# could do a setup rather than copying Team.new in every test...

# test to check name getter.
  def test_check_name
    team = Team.new("Liverpool", ["Salah", "Mane", "Firmino"], "Klopp")
    assert_equal("Liverpool", team.name)
  end

# test to check players getter.
  def test_check_players
    team = Team.new("Liverpool", ["Salah", "Mane", "Firmino"], "Klopp")
    assert_equal(["Salah", "Mane", "Firmino"], team.players)
  end

# test to check coach getter.
  def test_check_coach
    team = Team.new("Liverpool", ["Salah", "Mane", "Firmino"], "Klopp")
    assert_equal("Klopp", team.coach)
  end

# test to check coach setter.
  def test_set_coach
    team = Team.new("Liverpool", ["Salah", "Mane", "Firmino"], "Klopp")
    team.set_coach("Wenger")
    assert_equal("Wenger", team.coach)
  end

# test to check functionality of add_player method - should add specified string onto players array.
  def test_add_player
    team = Team.new("Liverpool", ["Salah", "Mane", "Firmino"], "Klopp")
    team.add_player("Keita")
    assert_equal(["Salah", "Mane", "Firmino", "Keita"], team.players)
  end

# test to check functionality of player_check - should return true if specified string is within players array.
  def test_player_check__true
    team = Team.new("Liverpool", ["Salah", "Mane", "Firmino"], "Klopp")
    assert_equal(true, team.player_check("Salah"))
  end

# test to check functionality of player_check - should return false if specified string is within players array.
  def test_player_check__false
    team = Team.new("Liverpool", ["Salah", "Mane", "Firmino"], "Klopp")
    assert_equal(false, team.player_check("Gerrard"))
  end

# test to check points getter and default to 0.
  def test_check_points
    team = Team.new("Liverpool", ["Salah", "Mane", "Firmino"], "Klopp")
    assert_equal(0, team.points)
  end

# test to check result method - "W" should increase points by 3.
  def test_check_points__win
    team = Team.new("Liverpool", ["Salah", "Mane", "Firmino"], "Klopp")
    team.result("W")
    assert_equal(3, team.points)
  end

# test to check result method - "L" should have no change to points.
  def test_check_points__loss
    team = Team.new("Liverpool", ["Salah", "Mane", "Firmino"], "Klopp")
    team.result("L")
    assert_equal(0, team.points)
  end


end

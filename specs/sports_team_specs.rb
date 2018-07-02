require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestTeam < MiniTest::Test

  def test_check_name
    team = Team.new("Liverpool", ["Salah", "Sane", "Firmino"], "Klopp")
    assert_equal("Liverpool", team.name)
  end

  def test_check_players
    team = Team.new("Liverpool", ["Salah", "Sane", "Firmino"], "Klopp")
    assert_equal(["Salah", "Sane", "Firmino"], team.players)
  end

  def test_check_coach
    team = Team.new("Liverpool", ["Salah", "Sane", "Firmino"], "Klopp")
    assert_equal("Klopp", team.coach)
  end

  def test_set_coach
    team = Team.new("Liverpool", ["Salah", "Sane", "Firmino"], "Klopp")
    changed_coach = team.set_coach("Wenger")
    assert_equal("Wenger", team.coach)
  end

  def test_add_new_player
    team = Team.new("Liverpool", ["Salah", "Sane", "Firmino"], "Klopp")
    team.add_player("Keita")
    assert_equal(["Salah", "Sane", "Firmino", "Keita"], team.players)
  end

  def test_player_check__true
    team = Team.new("Liverpool", ["Salah", "Sane", "Firmino"], "Klopp")
    assert_equal(true, team.player_check("Salah"))
  end

  def test_player_check__false
    team = Team.new("Liverpool", ["Salah", "Sane", "Firmino"], "Klopp")
    assert_equal(false, team.player_check("Gerrard"))
  end

  def test_check_points
    team = Team.new("Liverpool", ["Salah", "Sane", "Firmino"], "Klopp")
    assert_equal(0, team.points)
  end

  def test_check_points__win
    team = Team.new("Liverpool", ["Salah", "Sane", "Firmino"], "Klopp")
    team.result("W")
    assert_equal(3, team.points)
  end

  def test_check_points__loss
    team = Team.new("Liverpool", ["Salah", "Sane", "Firmino"], "Klopp")
    team.result("L")
    assert_equal(0, team.points)
  end


end

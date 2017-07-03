require ("minitest/autorun")
require ("minitest/rg")
require_relative ("./sports_team")

class TestSportsTeam < MiniTest::Test

 def test_create_team
    team1 = SportsTeam.new("Opera 1st XV", ["Ping", "Pang", "Po"], "Turandot")
    # assert_equal(‘Opera 1st XV’, team1.get_team_name)
    # assert_equal([‘Ping’, ‘Pang’, ‘Po’], team1.get_players)
    # assert_equal(‘Turandot’, team1.get_coach)
    assert_equal("Opera 1st XV", team1.team_name)
    assert_equal(["Ping", "Pang", "Po"], team1.players)
    assert_equal("Turandot", team1.coach)
  end

 def test_set_coach
    team1 = SportsTeam.new("Opera 1st XV", ["Ping", "Pang", "Po"], "Turandot")
    # assert_equal(‘Timur’, team1.set_coach(‘Timur’))
    # team1.coach = ‘Timur’
    # assert_equal(‘Timur’, team1.coach)
    assert_equal("Timur", team1.update_coach("Timur"))
  end

 def test_add_player
    team1 = SportsTeam.new("Opera 1st XV", ["Ping", "Pang", "Po"], "Turandot")
    assert_equal(["Ping", "Pang", "Po", "Liu"], team1.add_player("Liu"))
  end

 def test_check_player
    team1 = SportsTeam.new("Opera 1st XV", ["Ping", "Pang", "Po"], "Turandot")
    assert_equal(true, team1.check_player("Ping"))
    assert_equal(true, team1.check_player("Pang"))
    assert_equal(true, team1.check_player("Po"))
    assert_equal(false, team1.check_player("Craig"))
  end

 def test_update_points
    team1 = SportsTeam.new("Opera 1st XV", ["Ping", "Pang", "Po"], "Turandot")
    assert_equal(0, team1.win_game("loss", 0))
    assert_equal(5, team1.win_game("win", 5))
    assert_equal(5, team1.win_game("loss", 0))
    assert_equal(5, team1.win_game("loss", 5))
  end

end
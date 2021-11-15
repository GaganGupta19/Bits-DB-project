require "test_helper"

class TeamParticipationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_participation = team_participations(:one)
  end

  test "should get index" do
    get team_participations_url
    assert_response :success
  end

  test "should get new" do
    get new_team_participation_url
    assert_response :success
  end

  test "should create team_participation" do
    assert_difference('TeamParticipation.count') do
      post team_participations_url, params: { team_participation: { EventSubEvent: @team_participation.EventSubEvent, Team: @team_participation.Team, position: @team_participation.position, round: @team_participation.round, score: @team_participation.score } }
    end

    assert_redirected_to team_participation_url(TeamParticipation.last)
  end

  test "should show team_participation" do
    get team_participation_url(@team_participation)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_participation_url(@team_participation)
    assert_response :success
  end

  test "should update team_participation" do
    patch team_participation_url(@team_participation), params: { team_participation: { EventSubEvent: @team_participation.EventSubEvent, Team: @team_participation.Team, position: @team_participation.position, round: @team_participation.round, score: @team_participation.score } }
    assert_redirected_to team_participation_url(@team_participation)
  end

  test "should destroy team_participation" do
    assert_difference('TeamParticipation.count', -1) do
      delete team_participation_url(@team_participation)
    end

    assert_redirected_to team_participations_url
  end
end

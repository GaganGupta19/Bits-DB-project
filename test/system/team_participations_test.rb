require "application_system_test_case"

class TeamParticipationsTest < ApplicationSystemTestCase
  setup do
    @team_participation = team_participations(:one)
  end

  test "visiting the index" do
    visit team_participations_url
    assert_selector "h1", text: "Team Participations"
  end

  test "creating a Team participation" do
    visit team_participations_url
    click_on "New Team Participation"

    fill_in "Eventsubevent", with: @team_participation.EventSubEvent
    fill_in "Team", with: @team_participation.Team
    fill_in "Position", with: @team_participation.position
    fill_in "Round", with: @team_participation.round
    fill_in "Score", with: @team_participation.score
    click_on "Create Team participation"

    assert_text "Team participation was successfully created"
    click_on "Back"
  end

  test "updating a Team participation" do
    visit team_participations_url
    click_on "Edit", match: :first

    fill_in "Eventsubevent", with: @team_participation.EventSubEvent
    fill_in "Team", with: @team_participation.Team
    fill_in "Position", with: @team_participation.position
    fill_in "Round", with: @team_participation.round
    fill_in "Score", with: @team_participation.score
    click_on "Update Team participation"

    assert_text "Team participation was successfully updated"
    click_on "Back"
  end

  test "destroying a Team participation" do
    visit team_participations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team participation was successfully destroyed"
  end
end

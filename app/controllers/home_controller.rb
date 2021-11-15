class HomeController < ApplicationController

  def index
    @teams = Team.all
    @event = Event.where(year: DateTime.now.year).order(created_at: :desc).first
    @sub_events = @event.event_sub_events
  end

  def enroll
    params[:event_sub_event_id].each do |_id|
      team_participation = TeamParticipation.create(event_sub_event_id: _id.to_i, team_id: params[:team_id], score: 0, round: 0, year: DateTime.now.year)
    end

    flash[:success] = "Successfully created records"
    redirect_to home_index_path
  end

  def search
    if params[:tname] && params[:year]
      @data = TeamParticipation
        .joins(:team)
        .includes(:team, event_sub_event: [:event])
        .where("`teams`.`name` like '%#{params[:tname]}%' AND `team_participations`.`year` =  #{params[:year]}")
    end
  end
end

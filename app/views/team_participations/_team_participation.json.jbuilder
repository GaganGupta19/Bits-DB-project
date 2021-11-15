json.extract! team_participation, :id, :Team, :EventSubEvent, :round, :score, :position, :created_at, :updated_at
json.url team_participation_url(team_participation, format: :json)

class TeamParticipation < ApplicationRecord
  belongs_to :team
  belongs_to :event_sub_event
end

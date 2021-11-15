class EventSubEvent < ApplicationRecord
  belongs_to :event
  belongs_to :sub_event

  has_many :team_participations

  def sub_event_name
    self.sub_event.try(:name)
  end
end

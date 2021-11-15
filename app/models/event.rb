class Event < ApplicationRecord
  has_many :event_sub_events
  has_many :sub_events, through: :event_sub_events
end

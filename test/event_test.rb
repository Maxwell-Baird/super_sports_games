require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test

  def test_if_event_exist
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_instance_of Event, event
  end

  def test_if_event_has_name
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal "Curling", event.name
  end

  def test_if_event_has_ages
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal [24, 30, 18, 20, 41], event.ages
  end

  def test_event_max_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 41, event.max_age
  end

  def test_event_min_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 18, event.min_age
  end
end

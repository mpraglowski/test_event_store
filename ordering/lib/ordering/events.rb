module Ordering
  module Events
    OrderInitialized = Class.new(RailsEventStore::Event)
    OrderPlaced = Class.new(RailsEventStore::Event)
    ProductAddedToOrder = Class.new(RailsEventStore::Event)
    ProductRemovedFromOrder = Class.new(RailsEventStore::Event)
  end
end

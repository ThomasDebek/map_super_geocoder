class Location < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # To dodaje możliwość wyszukiwania metodą near (np. Location.near)
  reverse_geocoded_by :latitude, :longitude
end

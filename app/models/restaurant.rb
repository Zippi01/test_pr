class Restaurant < ApplicationRecord
    belongs_to :city
    belongs_to :type_restaurants

    def self.search(search)
      where("name LIKE ?", "%#{search}%")
    end
end

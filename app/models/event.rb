class Event < ApplicationRecord
    has_one_attached :photo do |attachable|
        attachable.variant :thumb, resize_to_limit: [100, 100]
    end
    
    validates :title, :eventstart, :eventend, presence: true
    validate :cannot_have_more_than_four_featured

    def cannot_have_more_than_four_featured
        if (featured && (Event.where(featured: true).length > 3))
            errors.add(:featured, "can't be true because there are already 4 featured events")
        end
    end
end

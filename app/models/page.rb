class Page < ApplicationRecord
    belongs_to :section
	validates :title, :page_type, presence: true
	has_one_attached :doc
end

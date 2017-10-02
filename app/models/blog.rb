class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	extend FriendlyId
	friendly_id :title, use: :slugged

	validate_presence of :title, :body
end

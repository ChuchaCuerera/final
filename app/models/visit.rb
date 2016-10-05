class Visit < ApplicationRecord
	belongs_to :parent_id, class_name: 'User'
	belongs_to :child_id, class_name: 'User'
end

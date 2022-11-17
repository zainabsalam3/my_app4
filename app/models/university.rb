class University < ApplicationRecord
    belongs_to :educator
    has_many :books, dependent: :destroy
end

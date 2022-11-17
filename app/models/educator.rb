class Educator < ApplicationRecord
    has_many :universities, dependent: :destroy
end

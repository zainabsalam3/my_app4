class Book < ApplicationRecord
    #validates :year, numericality: {greater_than: 2019}

    belongs_to :university
end

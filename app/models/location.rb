class Location < ApplicationRecord
    #associations 
    has_many :posts, dependent: :destroy
    #validations
        validates :name, presence: true, uniqueness: true, length: {maximum: 30}
        validates :city, presence: true
        validates :country, presence: true
end

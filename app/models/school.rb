class School < ApplicationRecord
  has_many :notes, dependent: :destroy
end

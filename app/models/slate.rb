class Slate < ApplicationRecord
  has_and_belongs_to_many :delegates
end

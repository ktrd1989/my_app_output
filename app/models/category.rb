class Category < ApplicationRecord
  has_many :reports

  has_ancestry
end

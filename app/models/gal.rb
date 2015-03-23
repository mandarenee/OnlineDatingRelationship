class Gal < ActiveRecord::Base
  has_many :relationships
  has_many :guys, through: :relationships
end

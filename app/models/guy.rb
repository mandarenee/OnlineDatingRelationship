class Guy < ActiveRecord::Base
  has_many :relationships
  has_many :gals, through: :relationships
end

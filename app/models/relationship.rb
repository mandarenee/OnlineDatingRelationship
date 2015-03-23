class Relationship < ActiveRecord::Base
  belongs_to :guy
  belongs_to :gal
end

class Amoeba < ActiveRecord::Base
  attr_accessible :generation, :name

  has_one :talent
  has_many :acts, :through => :amoebaacts
end

class Amoeba < ActiveRecord::Base
  attr_accessible :generation, :name, :talent_id

  has_one :talent
  has_many :amoeba_acts
  has_many :acts, :through => :amoeba_acts

  accepts_nested_attributes_for :acts
  validates :name, presence: true
end

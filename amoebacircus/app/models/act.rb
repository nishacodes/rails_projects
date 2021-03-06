class Act < ActiveRecord::Base
  attr_accessible :date, :name, :time
  
  has_many :amoeba_acts
  has_many :amoebas, :through => :amoeba_acts

  accepts_nested_attributes_for :amoebas
  validates :name, presence: true
end

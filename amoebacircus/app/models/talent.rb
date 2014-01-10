class Talent < ActiveRecord::Base
  attr_accessible :name

  has_many :amoebas

  validates :name, presence: true
end

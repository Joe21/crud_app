class Store < ActiveRecord::Base
  attr_accessible :name, :customers

  has_and_belongs_to_many :customers
  has_many :goods
end

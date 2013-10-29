class Customer < ActiveRecord::Base
  attr_accessible :name, :stores

  has_and_belongs_to_many :stores
end

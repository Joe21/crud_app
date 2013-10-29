class Good < ActiveRecord::Base
  attr_accessible :name
  belongs_to :store
end

class Gear < ActiveRecord::Base
  attr_accessible :availability, :dayrate, :image, :name, :gear_type, :weekrate, :description
end

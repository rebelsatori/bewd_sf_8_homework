class Movie < ActiveRecord::Base
  attr_accessible :description, :title, :year_released
end


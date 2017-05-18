class Movie < ApplicationRecord

  # Movie:
  #  - director_id: must be present

  validates :director_id, :presence => true

  #  - title: must be present; must be unique in combination with year
  validates :title, :presence => true, :uniqueness => { :scope => :year }

  ##the above line says make sure that title is both present and is unique for a given year

  #validates :title, :presence => true, :uniqueness => { :scope => [:year, :duration] }
  ## the above line says title must be unique for a given year AND for its duration


  #  - year: must be integer between 1870 and 2050

  validates :year, :presence => true, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1870, :less_than_or_equal_to => 2050 }

  #  - duration: must be integer between 0 and 2764800

  validates :duration, :presence => true, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 2764800 }

  #  - description: no rules
  #  - image_url: no rules

end

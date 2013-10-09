class Rate < ActiveRecord::Base
  attr_accessible :rate, :dimension

  belongs_to :rater, class_name: "<%= file_name.classify %>"
  belongs_to :rateable, polymorphic: true
end

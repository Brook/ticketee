class Ticket < ActiveRecord::Base
  belongs_to :project
  validates_presence_of :title
  validates_presence_of :description
  validates :description, :presence => true,
                          :length => { :minimum => 10 }
end

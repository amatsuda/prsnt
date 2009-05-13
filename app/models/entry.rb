class Entry < ActiveRecord::Base
  belongs_to :event
  belongs_to :present
end

class Present < ActiveRecord::Base
  belongs_to :event
  belongs_to :sponsor
end

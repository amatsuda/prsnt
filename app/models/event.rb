class Event < ActiveRecord::Base
  has_many :presents
  has_many :entries
end

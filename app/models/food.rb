class Food < ApplicationRecord
  belongs_to :user, :optional => true
end

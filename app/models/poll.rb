class Poll < ApplicationRecord
  has_many :answers, dependent: :destroy
end

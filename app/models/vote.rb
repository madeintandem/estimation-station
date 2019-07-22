# frozen_string_literal: true

# Vote Model
class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
end

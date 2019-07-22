# frozen_string_literal: true

# Room Model
class Room < ApplicationRecord
  has_many :users
  has_many :tickets
end

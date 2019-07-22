# frozen_string_literal: true

# Room class migration
class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |table|
      table.string :name
      table.datetime :closed_at, default: nil

      table.timestamps
    end
  end
end

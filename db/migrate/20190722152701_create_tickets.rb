# frozen_string_literal: true

# Tickets class migration
class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.datetime :closed_at
      t.integer :value
      t.references :room

      t.timestamps
    end
  end
end

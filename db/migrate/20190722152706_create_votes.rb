# frozen_string_literal: true

# votes class migration
class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :users
      t.references :tickets
      t.integer :value

      t.timestamps
    end
  end
end

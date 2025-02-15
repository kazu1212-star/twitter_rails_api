# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :context, null: false
      t.references :user, foreign_key: true
      t.references :tweet, foreign_key: true
      t.timestamps
    end
  end
end

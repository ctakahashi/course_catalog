class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :course
      t.string :subject

      t.timestamps null: false
    end
  end
end

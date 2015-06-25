class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.belongs_to :locations, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

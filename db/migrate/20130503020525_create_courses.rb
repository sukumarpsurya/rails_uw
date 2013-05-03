class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.references :teacher
      t.references :student

      t.timestamps
    end
    add_index :courses, :teacher_id
    add_index :courses, :student_id
  end
end

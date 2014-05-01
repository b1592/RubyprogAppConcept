class CreateCoursesTeachers < ActiveRecord::Migration
  def change
    create_table :courses_teachers do |t|
      t.belongs_to :course
      t.belongs_to :teacher
    end
  end
end

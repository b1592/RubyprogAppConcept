class AddCourseGroupToStudents < ActiveRecord::Migration
  def change
    add_column :students, :course_group, :string
  end
end

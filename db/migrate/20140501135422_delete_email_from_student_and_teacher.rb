class DeleteEmailFromStudentAndTeacher < ActiveRecord::Migration
  def change
    remove_column :students, :email, :string
    remove_column :teachers, :email, :string
  end
end

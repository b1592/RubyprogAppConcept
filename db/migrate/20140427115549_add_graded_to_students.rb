class AddGradedToStudents < ActiveRecord::Migration
  def change
    add_column :students, :graded, :boolean
  end
end

class AddProblemsRubyToStudents < ActiveRecord::Migration
  def change
    add_column :students, :problems_ruby, :string
  end
end

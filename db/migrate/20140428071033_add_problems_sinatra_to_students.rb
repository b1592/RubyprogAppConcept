class AddProblemsSinatraToStudents < ActiveRecord::Migration
  def change
    add_column :students, :problems_sinatra, :string
  end
end

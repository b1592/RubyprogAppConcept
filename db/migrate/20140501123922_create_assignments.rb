class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.boolean :completed
      t.datetime :due_date

      t.timestamps
    end
  end
end

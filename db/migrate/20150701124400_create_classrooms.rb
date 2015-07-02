class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :student_id
      t.integer :klass_id

      t.timestamps null: false
    end
  end
end

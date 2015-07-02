class AddStudentIdToKlasses < ActiveRecord::Migration
  def change
    add_reference :klasses, :student, index: true
    add_foreign_key :klasses, :students
  end
end

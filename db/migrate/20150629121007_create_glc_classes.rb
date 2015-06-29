class CreateGlcClasses < ActiveRecord::Migration
  def change
    create_table :glc_classes do |t|
      t.string :class_name
      t.string :day

      t.timestamps null: false
    end
  end
end

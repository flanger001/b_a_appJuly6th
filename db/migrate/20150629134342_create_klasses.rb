class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :klass_name
      t.string :day

      t.timestamps null: false
    end
  end
end

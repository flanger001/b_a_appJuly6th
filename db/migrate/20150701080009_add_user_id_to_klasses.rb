class AddUserIdToKlasses < ActiveRecord::Migration
  def change
    add_reference :klasses, :user, index: true
    add_foreign_key :klasses, :users
  end
end

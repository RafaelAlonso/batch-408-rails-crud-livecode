class AddReturnedToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :returned, :boolean, default: false
  end
end

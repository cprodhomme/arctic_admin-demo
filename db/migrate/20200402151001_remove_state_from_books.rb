class RemoveStateFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :state, :string
  end
end

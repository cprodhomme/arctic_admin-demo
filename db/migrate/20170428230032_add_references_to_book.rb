class AddReferencesToBook < ActiveRecord::Migration[4.2]
  def change
    add_reference :books, :user, index: true
  end
end

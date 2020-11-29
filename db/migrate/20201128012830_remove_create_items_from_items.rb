class RemoveCreateItemsFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :delivery_method, :string
    remove_column :items, :sales, :string
    remove_column :items, :number_of_process, :integer
  end
end

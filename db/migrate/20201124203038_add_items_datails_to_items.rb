class AddItemsDatailsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :product_name, :string
    add_column :items, :order_number, :string
    add_column :items, :product_date, :datetime
    add_column :items, :delivery_date, :datetime
    add_column :items, :delivery_method, :string
    add_column :items, :quantity, :integer
    add_column :items, :sales, :string
    add_column :items, :number_of_process, :integer
    add_column :items, :process, :string
    add_column :items, :remarks, :text
  end
end

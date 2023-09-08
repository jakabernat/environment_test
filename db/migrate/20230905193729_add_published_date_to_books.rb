class AddPublishedDateToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :publishedDate, :date
  end
end

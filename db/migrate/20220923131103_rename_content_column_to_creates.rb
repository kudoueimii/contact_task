class RenameContentColumnToCreates < ActiveRecord::Migration[6.1]
  def change
    rename_column :contacts, :contact, :content
  end
end

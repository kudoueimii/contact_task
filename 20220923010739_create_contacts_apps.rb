class CreateContactsApps < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts_apps do |t|

      t.timestamps
    end
  end
end

class CreateTableEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string  :name
      t.string  :description
      t.string  :date
      t.string  :place
      t.string  :cost
      t.string  :hour
      t.string  :requirements
      t.string  :notes
      t.timestamps
    end
  end
end

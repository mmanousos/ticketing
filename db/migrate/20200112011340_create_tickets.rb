class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :name, null: false, unique: true
      t.string :body
      t.string :status, null: false
      t.integer :project_id, null: false
      t.timestamps
    end
  end
end

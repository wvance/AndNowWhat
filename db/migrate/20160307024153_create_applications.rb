class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :opportunity, index: true
      t.references :employee, index: true
      t.string :status
      t.text :applications_description
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
    add_foreign_key :applications, :opportunities
    add_foreign_key :applications, :employees
  end
end

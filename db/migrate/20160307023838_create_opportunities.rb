class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.references :company, index: true
      t.string :title
      t.string :opportunity_type
      t.string :status
      t.text :opporunity_description
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
    add_foreign_key :opportunities, :companies
  end
end

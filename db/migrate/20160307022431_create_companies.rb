class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :type

      t.string :external_url
      t.string :image

      t.string :status

      t.timestamps null: false
    end
  end
end

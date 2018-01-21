class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.integer :company_number
      t.string :company_name
      t.string :now
      t.date :company_date
      t.integer :employee
      t.string :tantosya
      t.string :place
      t.string :occupations
      t.string :content
      t.text :reason

      t.timestamps
    end
  end
end

class CreateProfessors < ActiveRecord::Migration
  def self.up
    create_table :professors do |t|
      t.string :name
      t.string :title
      t.string :department
      t.string :email
      t.string :phone_number
      t.string :location
      t.string :webpage
      t.string :picture_url

      t.timestamps
    end
  end

  def self.down
    drop_table :professors
  end
end

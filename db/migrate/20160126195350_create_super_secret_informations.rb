class CreateSuperSecretInformations < ActiveRecord::Migration
  def change
    create_table :super_secret_informations do |t|
      t.string :bank_details
      t.string :embarrassing_facts
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

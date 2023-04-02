class CreateWashingMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :washing_machines do |t|
      t.integer    :floor
      t.boolean    :is_available

      t.timestamps
    end
  end
end

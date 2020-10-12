class CreateSampleResources < ActiveRecord::Migration
  def change
    create_table :sample_resources do |t|

      t.timestamps null: false
    end
  end
end

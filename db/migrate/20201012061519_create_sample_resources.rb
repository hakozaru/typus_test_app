class CreateSampleResources < ActiveRecord::Migration
  def change
    create_table :sample_resources do |t|
      t.string   "password", limit: 128
      t.string   "hogehoge", limit: 128
      t.string   "email"
      t.string   "ip"
      t.string   "last_login_ip"
      t.integer  "login_count",        default: 0, null: false
      t.datetime "login_at"
      t.date "date_column"
      t.integer  "integer_column"
      t.boolean "boolean_column"
      t.decimal "decimal_column", precision: 10, scale: 2
      t.timestamps null: false
    end
  end
end

class CreateGnas < ActiveRecord::Migration
  def self.up
    create_table :gnas do |t|
      t.integer :multiplier_a
      t.integer :constant_c
      t.integer :module_m
      t.integer :seed_xo

      t.timestamps
    end
  end

  def self.down
    drop_table :gnas
  end
end

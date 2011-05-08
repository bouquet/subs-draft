class CreateSubs < ActiveRecord::Migration
  def self.up
    create_table :subs do |t|
      t.string :from
      t.string :to
      t.string :subs_text

      t.timestamps
    end
  end

  def self.down
    drop_table :subs
  end
end

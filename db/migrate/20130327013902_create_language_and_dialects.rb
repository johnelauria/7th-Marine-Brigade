class CreateLanguageAndDialects < ActiveRecord::Migration
  def change
    create_table :language_and_dialects do |t|
      t.integer :miscellaneou_id
      t.string :language
      t.string :speaks
      t.string :read
      t.string :write

      t.timestamps
    end
  end
end

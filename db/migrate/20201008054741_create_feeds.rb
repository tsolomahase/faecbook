class CreateFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :feeds do |t|
      t.text :feed

      t.timestamps
    end
  end
end

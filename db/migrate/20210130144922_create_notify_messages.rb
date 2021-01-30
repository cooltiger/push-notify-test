class CreateNotifyMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :notify_messages do |t|
      t.string :title
      t.string :contents

      t.timestamps
    end
  end
end

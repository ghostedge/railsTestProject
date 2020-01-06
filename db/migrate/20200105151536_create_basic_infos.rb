class CreateBasicInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :basic_infos do |t|

      t.timestamps
    end
  end
end

class CreateRecomds < ActiveRecord::Migration[6.0]
  def change
    create_table :recomds do |t|

      t.timestamps
    end
  end
end

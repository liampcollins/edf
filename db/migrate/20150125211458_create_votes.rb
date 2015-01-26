class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :name
      t.text :title
      t.float :finance
      t.float :skills
      t.float :env
      t.float :culture
      t.float :inf
      t.float :diginf
      t.float :agglom
      t.float :market
      t.float :lifestyle

      t.timestamps
    end
  end
end

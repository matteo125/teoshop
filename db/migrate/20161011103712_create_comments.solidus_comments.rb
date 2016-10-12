# This migration comes from solidus_comments (originally 20091021182639)
class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :title, :limit => 50
      t.text :comment
      t.references :commentable, :polymorphic => true
      t.references :user

      t.timestamps
    end

    add_index :comments, :commentable_type
    add_index :comments, :commentable_id
    add_index :comments, :user_id
  end

  def self.down
    drop_table :comments
  end
end

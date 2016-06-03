class CreateContacts < ActiveRecord::Migration #bundle exec rails generate migration CreateContacts para crear este archivo
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :comments
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
    def change
        create_table :users do |t|
            t.string :name
            t.string :username
            t.string :password
            t.date :birthday
        end
    end
end
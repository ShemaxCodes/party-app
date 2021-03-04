class CreateParties < ActiveRecord::Migration[6.0]
    def change
        create_table :parties do |t|
            t.string :name 
            t.date   :date
            t.decimal :budget, precision: 5, scale: 2
            t.boolean :private
        end
    end

end 
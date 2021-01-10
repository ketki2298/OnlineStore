class AddOrdertoLineitems < ActiveRecord::Migration[6.0]
  def change
    add_reference :lineitems, :order, foreign_key: true
  end
end

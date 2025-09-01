class Venta < ApplicationRecord
  belongs_to :cliente
  belongs_to :vendedor

  def ingreso
    precio_item * total_items
  end
end

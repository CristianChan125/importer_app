require 'csv'

class ImportsController < ApplicationController
  def new
    @ventas = Venta.order(created_at: :desc).page(params[:page]).per(10)
    @total_venta = Venta.all.sum("precio_item * total_items")
  end

  def create
    file = params[:file]
    return redirect_to new_import_path, alert: "Por favor selecciona un archivo" if file.nil?

    CSV.foreach(file.path, headers: false, col_sep: "\t").with_index do |row, index|
      # Omitir la primera fila si es encabezado
      next if index == 0

      cliente = Cliente.find_or_create_by(nombre: row[0]) # columna 1
      vendedor = Vendedor.find_or_create_by(
        nombre: row[5],       # columna 6
        direccion: row[4]     # columna 5
      )

      Venta.create!(
        cliente: cliente,
        vendedor: vendedor,
        descripcion_item: row[1],   # columna 2
        precio_item: row[2].to_f,   # columna 3
        total_items: row[3].to_i    # columna 4
      )
    end

    total_ingresos = Venta.all.sum("precio_item * total_items")
    redirect_to new_import_path, notice: "Archivo importado correctamente. Ingresos totales: $#{total_ingresos}"
  end
end

class Producto
    # Clase Producto

    def initialize(precio,tipo)
        #Constructor
        @precio=precio
        @tipo=tipo
    end

    attr_accessor :precio, :tipo
    # Creación de Getter y Setter

    def mostrar_producto
        # Método mostrar producto
        puts "El producto #{@tipo} tiene un precio de #{@precio} Euros."
    end
end



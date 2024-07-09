require_relative "Producto"
# Importamos la clase Producto

class Pan < Producto
    # Herencia de la clase Producto, sus atributos y el método mostrar_producto

    def initialize(precio,tipo)
        # Constructor
        super(precio,tipo)
    end


    def mostrar_producto
        # Método heredado
        super
    end
end

pan=Pan.new(12,"pan de molde")
pan.mostrar_producto


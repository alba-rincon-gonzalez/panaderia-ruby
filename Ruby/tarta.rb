require_relative "Producto"
# Importamos la clase Producto

class Tarta < Producto
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

tarta1=Tarta.new(11.1,"Tarta de chocolate")
tarta1.mostrar_producto
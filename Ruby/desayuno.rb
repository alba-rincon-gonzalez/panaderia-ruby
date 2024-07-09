require_relative "Producto"
# Importamos la clase Producto

class Desayuno < Producto
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

zumo=Desayuno.new(2,"Zumo de naranja")
zumo.mostrar_producto
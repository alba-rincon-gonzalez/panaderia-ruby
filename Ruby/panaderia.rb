require_relative "Producto"
require_relative "Pan"
require_relative "Desayuno"
require_relative "Tarta"
# Importo todas las clases que quiero utilizar

class Panaderia
# Clase Panaderia

    def initialize()
        # Contructor

        pan1=Pan.new(2,"Pan de molde")
        pan2=Pan.new(1.30,"Pan artesano")
        pan3=Pan.new(2,"Pan madrileño")
        desayuno1=Desayuno.new(2.10,"Zumo de naranja")
        desayuno2=Desayuno.new(2.10,"Zumo de frutas")
        desayuno3=Desayuno.new(1.50,"Café")
        desayuno4=Desayuno.new(1.75,"Colacao")
        tarta1=Tarta.new(2.15,"Tarta de manzana")
        tarta2=Tarta.new(2.15,"Tarta de limón")
        tarta3=Tarta.new(2.15,"Tarta de queso")
        tarta4=Tarta.new(2.15,"Tarta de chocolate")

        @productos=[pan1,pan2,pan3,desayuno1,desayuno2,desayuno3,desayuno4,tarta1,tarta2,tarta3,tarta4]

        @ganancias=0
        
    end

    # Getter y Setter de los atributos
    attr_accessor :productos, :ganancias

    # Método mostrar productos
    def mostrar_productos
        productos.each do |my_productos|
            puts my_productos.mostrar_producto
        end
    end

    # Método para aumentar las ganancias cuando un cliente realiza una compra
    def aumenta_ganancia(precio)
        @ganancias=@ganancias+precio
    end

    # Método para eliminar ese producto cuando el cliente realiza esa compra
    def eliminar_producto(posicion)
        @productos.delete_at(posicion)
    end

end


salir=false
puts "Bienvenido a la panaderia"
panaderia1=Panaderia.new

# Mientras el no se declare lo contrario en la variable salir se seguirá ejecutando esto:
while !salir

    puts "¿Qué desea?"
    puts "1. Comprar"
    puts "2. Saber que productos tiene y su precio"
    puts "3. Echar un vistazo a la tienda"
    # El cliente decide que quiere realizar
    seleccionar=gets.to_i

    case seleccionar
    when 1
        # Lista de productos que puede comprar un cliente
        puts "¿Que quiere comprar?"
        puts "1. Pan de molde"
        puts "2. Pan artesano"
        puts "3. Pan madrileño"
        puts "4. Zumo de naranja"
        puts "5. Zumo de frutas"
        puts "6. Café"
        puts "7. Colacao"
        puts "8. Tarta de manzana"
        puts "9. Tarta de limón"
        puts "10. Tarta de queso"
        puts "11. Tarta de chocolate"
        respuesta1=gets.to_i

        # Dependiendo del producto que elija el cliente, la panadería tendrá una ganancia y ya no venderá ese producto

        if respuesta1==1
            panaderia1.aumenta_ganancia(panaderia1.productos[0].precio)
            puts "Ha obtenido #{panaderia1.ganancias} Euros de ganancia"
            panaderia1.eliminar_producto(0)
        elsif respuesta1==2
            panaderia1.aumenta_ganancia(panaderia1.productos[1].precio)
            puts "Ha obtenido #{panaderia1.ganancias} Euros de ganancia"
            panaderia1.eliminar_producto(1)
        elsif respuesta1==3
            panaderia1.aumenta_ganancia(panaderia1.productos[2].precio)
            puts "Ha obtenido #{panaderia1.ganancias} Euros de ganancia"
            panaderia1.eliminar_producto(2)
        elsif respuesta1==4
            panaderia1.aumenta_ganancia(panaderia1.productos[3].precio)
            puts "Ha obtenido #{panaderia1.ganancias} Euros de ganancia"
            panaderia1.eliminar_producto(3)
        elsif respuesta1==5
            panaderia1.aumenta_ganancia(panaderia1.productos[4].precio)
            puts "Ha obtenido #{panaderia1.ganancias} Euros de ganancia"
            panaderia1.eliminar_producto(4)
        elsif respuesta1==6
            panaderia1.aumenta_ganancia(panaderia1.productos[5].precio)
            puts "Ha obtenido #{panaderia1.ganancias} Euros de ganancia"
            panaderia1.eliminar_producto(5)
        elsif respuesta1==7
            panaderia1.aumenta_ganancia(panaderia1.productos[6].precio)
            puts "Ha obtenido #{panaderia1.ganancias} Euros de ganancia"
            panaderia1.eliminar_producto(6)
        elsif respuesta1==8
            panaderia1.aumenta_ganancia(panaderia1.productos[7].precio)
            puts "Ha obtenido #{panaderia1.ganancias} Euros de ganancia"
            panaderia1.eliminar_producto(7)
        elsif respuesta1==9
            panaderia1.aumenta_ganancia(panaderia1.productos[8].precio)
            puts "Ha obtenido #{panaderia1.ganancias} Euros de ganancia"
            panaderia1.eliminar_producto(8)
        elsif respuesta1==10
            panaderia1.aumenta_ganancia(panaderia1.productos[9].precio)
            puts "Ha obtenido #{panaderia1.ganancias} Euros de ganancia"
            panaderia1.eliminar_producto(9)
        elsif respuesta1==11
            panaderia1.aumenta_ganancia(panaderia1.productos[10].precio)
            puts "Ha obtenido #{panaderia1.ganancias} Euros de ganancia"
            panaderia1.eliminar_producto(10)
        end

    when 2

        # Listado de productos que tiene esta panadería
        puts "Los productos que tenemos son: "
        panaderia1.mostrar_productos

    when 3

        # El cliente aún no quiere nada
        salir=true

    end
end



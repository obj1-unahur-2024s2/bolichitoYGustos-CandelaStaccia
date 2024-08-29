import colores.*
import materiales.*


object remera {
  method color() = rojo
  method material() = lino
  method peso() = 800
}


object pelota {
  method color() = pardo
  method material() = cuero
  method peso()=1300
}

object biblioteca {
  method color() = verde
  method material() = madera
  method peso()=8000
}

object munieco {
    var peso = 1000
  method color() = celeste
  method material() = vidrio
  method peso(unPeso) {
    peso = unPeso
  }
  method peso() = peso
}

object placa {
    var peso = 5000
    var color = rojo
  method color(unColor) {
    color = unColor
  }
  method color() = color
  method material() = cobre
  method peso(unPeso) {
    peso = unPeso
  }
  method peso() = peso
}

object arito {
  method color() = celeste
  method material() = cobre
  method peso() = 180
}

object banquito {
  var color = naranja
  method color(unColor) {
    color = unColor
  }
  method color() = color
  method material() = madera
  method peso() = 1700
}

object cajita {
  var objetoAdentro = arito
  method objetoAdentro(unObjeto) {
    objetoAdentro = unObjeto
  }
  method objetoAdentro() = objetoAdentro
  method material() = cobre
  method color() = rojo
  method peso() {
    return 400 + objetoAdentro.peso()
  }
}
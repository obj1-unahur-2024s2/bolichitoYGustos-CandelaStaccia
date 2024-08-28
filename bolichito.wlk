import objetos.*
import personas.*
import colores.*
import materiales.*



object bolichito {
  var objetoEnVidriera = remera
  var objetoEnMostrador = pelota

  method objetoEnVidriera(unObjeto) {
    objetoEnVidriera = unObjeto
  }
  method objetoEnVidriera() = objetoEnVidriera

  method objetoEnMostrador(unObjeto) {
    objetoEnMostrador = unObjeto
  }
  method objetoEnMostrador() = objetoEnMostrador

  method esBrillante() {
    return objetoEnVidriera.material().esBrillante() &&
    objetoEnMostrador.material().esBrillante()
  }

  method esMonocromatico() {
    return objetoEnMostrador.color() == objetoEnVidriera.color()
  }

  method estaEquilibrado() {
    return objetoEnMostrador.peso() > objetoEnVidriera.peso()
  }

  method hayObjetoDeColor(unColor) {
    return objetoEnMostrador.color() == unColor ||
    objetoEnVidriera.color() == unColor
  }

  method puedeMejorar() {
    return !self.estaEquilibrado() || self.esMonocromatico()
  }

  method lePuedoOfrecerA(unaPersona) {
    return unaPersona.leGusta(objetoEnMostrador) ||
    unaPersona.leGusta(objetoEnVidriera)
  }
}
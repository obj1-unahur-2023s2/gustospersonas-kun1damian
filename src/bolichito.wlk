import objetos.*
import materiales.*

object bolichito {
	var objetoEnVidriera
	var objetoEnMostrador
	
	method objetoEnVidriera() = objetoEnVidriera
	method objetoEnVidriera(unObjeto) {objetoEnVidriera = unObjeto}
	method objetoEnMostrador() = objetoEnMostrador
	method objetoEnMostrador(unObjeto) {objetoEnMostrador = unObjeto}
	
	method esBrillante() = objetoEnVidriera.material().esMaterialBrillante() and objetoEnMostrador.material().esMaterialBrillante()
	method esMonocromatico() = objetoEnVidriera.color() == objetoEnMostrador.color()
	method estaDesequilibrado() = objetoEnVidriera.peso() < objetoEnMostrador.peso()
	method tieneAlgoDeColor(color) = objetoEnVidriera.color() == color or objetoEnMostrador.color() == color
	method puedeMejorar() = self.estaDesequilibrado() or self.esMonocromatico() 
	method puedeOfrecerleAlgoA(persona){
		return persona.leGusta(objetoEnVidriera) or persona.leGusta(objetoEnMostrador)
	}
}

 
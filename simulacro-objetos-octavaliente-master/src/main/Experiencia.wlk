import Artista.*

class Recategorizable{
	const siguienteExperiencia
	
	method sueldo(unArtista)
	method recategorizar(unArtista){
		if (self.puedeAscender(unArtista) > 10){
			return siguienteExperiencia
		} else {
			throw new NoSePuedeRecategorizarException(message = "No es posible recategorizarse")
		}
	}
	method puedeAscender(unArtista)
}


object amateur inherits Recategorizable(siguienteExperiencia = establecido) {
	override method sueldo(unArtista){
		return 10000
	}
	override method puedeAscender(unArtista){
		return unArtista.peliculasActuadas()	
	}	
}

object establecido inherits Recategorizable(siguienteExperiencia = estrella) {
	override method sueldo(unArtista){
		if(unArtista.fama() < 15){
			return 15000
		} else {
			return 5000 * unArtista.fama()
		}
	}
	override method puedeAscender(unArtista){
		return unArtista.fama()
	}
}

object estrella {
	method sueldo(unArtista){
		return 30000
	}
	method recategorizar(unArtista){
		throw new NoSePuedeRecategorizarException(message = "Ya es una Estrella")
	}
}
class NoSePuedeRecategorizarException inherits Exception {}


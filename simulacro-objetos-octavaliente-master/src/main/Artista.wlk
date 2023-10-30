import Experiencia.*

class Artista {
	var experiencia
	var peliculasActuadas
	var ahorros
	var fama
	
	method sueldo(){
		return experiencia.sueldo(self)
	}
	method actuar(){
		peliculasActuadas += 1
		ahorros += self.sueldo()
	}
	
	method fama(){
		return fama
	}
	
	method recategorizar(){
		experiencia = experiencia.recategorizar(self)
	}

	method peliculasActuadas(){
		return peliculasActuadas
	}
}

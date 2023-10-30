import Artista.*

class Pelicula {
	const nombre
	const elenco = #{}
	
	method presupuesto (){
		return self.sueldos() * 1.7
	}
	
	method sueldos(){
		return elenco.sum{unArtista => unArtista.sueldo()}
	}
	
	method recaudado(){
		return self.ganancias() - self.presupuesto()
	}
	
	method ganancias(){
		return 1000000
	}
	
	method rodar(){
		elenco.forEach{unArtista => unArtista.actuar()}
	}
	
	method nombre(){
		return nombre
	}
}

class Accion inherits Pelicula {
	const vidriosRotos
	
	override method presupuesto(){
		return super() + 1000 * vidriosRotos
	}
	
	override method ganancias(){
		return super() + 50000 * self.cantidadIntegrantes()
	}
	
	method cantidadIntegrantes(){
		return elenco.size()
	}
}

class Drama inherits Pelicula {
	override method ganancias(){
		return super() + 100000 * nombre.size()
	}
}

class Terror inherits Pelicula {
	const cuchos
	
	override method ganancias(){
		return super() + 20000 * cuchos
	}
}

class Comedia inherits Pelicula {
	
}

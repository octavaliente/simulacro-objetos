import Artista.*
import Pelicula.*

object impdep {
	const artistas = #{}
	const peliculas = #{}
	
	method mejorSueldo(){
		return artistas.max{unArtista => unArtista.sueldo()}
	}
	
	method nombresDePeliculasEconomicas(){
		return self.peliculasEconomicas().map({unaPelicula => unaPelicula.nombre()})
	}
	
	method peliculasEconomicas(){
		return peliculas.filter{unaPelicula => unaPelicula.presupuesto() < 500000}
	}
	
	method gananciasPeliculasEconomicas(){
		return self.peliculasEconomicas().sum{unaPelicula => unaPelicula.ganancias()}
	}
	
	method recategorizarArtistas(){
		artistas.forEach{unArtista => unArtista.recategorizar()}
	}
}

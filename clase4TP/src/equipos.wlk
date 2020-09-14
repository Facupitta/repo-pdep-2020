import personajes.*

object equipoAzul {
	const personajes = #{pamela, toro}
	
	method personajes(){
		return personajes
	}
	
	method atacarEquipo(equipoRival){
		personajes.forEach({personaje => personaje.pelearContraTodos(equipoRival.personajes())})
	}
	
	method energiaTotal(){
		return personajes.map({personaje => personaje.energia()}).sum()
	}
	
	method gritosDeVictoria(){
		return personajes.filter({personaje => personaje.energia() > 0}).map({personaje => personaje.gritoDeVictoria()})
	}
}

object equipoRojo {
	const personajes = #{pocardo, tulipan}
	
	method personajes(){
		return personajes
	}
	
	method atacarEquipo(equipoRival){
		personajes.forEach({personaje => personaje.pelearContraTodos(equipoRival.personajes())})
	}
	
	method energiaTotal(){
		return personajes.map({personaje => personaje.energia()}).sum()
	}
	
	method gritosDeVictoria(){
		return personajes.filter({personaje => personaje.energia() > 0}).map({personaje => personaje.gritoDeVictoria()})
	}
}
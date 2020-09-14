import equipos.*

object partida {
	const equipos = [equipoAzul, equipoRojo]
	var equipoGanador
	var gritosDeGanadores
	
	method jugarPartida(){
		equipos.get(0).atacarEquipo(equipos.get(1))
		equipos.get(1).atacarEquipo(equipos.get(0))
		equipoGanador = equipos.max({equipo => equipo.energiaTotal()})
		gritosDeGanadores = equipoGanador.gritosDeVictoria()
	}
	
	method equipoGanador(){
		return equipoGanador
	}
	
	method gritosDeGanadores(){
		return gritosDeGanadores
	}
}
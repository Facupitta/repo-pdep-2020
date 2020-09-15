import equipos.*

object partida {
	const equipo1 = equipoAzul
	const equipo2 = equipoRojo	
	
	method jugarPartida(){
		equipo1.atacarEquipo(equipo2)
		equipo2.atacarEquipo(equipo1)
	}
	
	method equipoGanador(){
		return [equipo1, equipo2].max({equipo => equipo.energiaTotal()})
	}
	
	method gritosDeGanadores(){
		return self.equipoGanador().gritosDeVictoria()
	}
}
object pamela {
	var objetos = ["algodon", "aguaOxigenada", "cintaDePapel", "cintaDePapel"]
	var energia = 6000
	const gritoDeVictoria = "Aca paso la Pamela"
	
	method objetos(){
		return objetos
	}
	
	method energia(){
		return energia
	}
	
	method aumentarEnergia(cantidad){
		energia += cantidad
	}
	
	method disminuirEnergia(cantidad){
		energia -= cantidad
	}
	
	method quitarObjeto(unObjeto){
		self.objetos().remove(unObjeto)
	}
	
	method pelearManoAMano(unContrincante){
		self.aumentarEnergia(400)
	}
	
	method pelearContraTodos(unosContrincantes){
		unosContrincantes.forEach({contrincante => self.pelearManoAMano(contrincante)})
	}
	
	method gritoDeVictoria(){
		return gritoDeVictoria
	}
}

object pocardo {
	var objetos = ["guitarra", "curita", "cotonetes"]
	var energia = 5600
	const gritoDeVictoria = "¡Siente el poder de la musica!"	
	
	method objetos(){
		return objetos
	}
	
	method energia(){
		return energia
	}
	
	method aumentarEnergia(cantidad){
		energia += cantidad
	}
	
	method disminuirEnergia(cantidad){
		energia -= cantidad
	}
	
	method quitarObjeto(unObjeto){
		self.objetos().remove(unObjeto)
	}
	
	method pelearManoAMano(unContrincante){
		self.aumentarEnergia(500)
	}
	
	method pelearContraTodos(unosContrincantes){
		unosContrincantes.forEach({contrincante => self.pelearManoAMano(contrincante)})
	}
	
	method gritoDeVictoria(){
		return gritoDeVictoria
	}
}

object tulipan {
	var objetos = ["rastrillo", "maceta", "maceta", "manguera"]
	var energia = 8400
	const gritoDeVictoria = "Hora de cuidar a las plantas"
	
	method objetos(){
		return objetos
	}
	
	method energia(){
		return energia
	}
	
	method disminuirEnergia(cantidad){
		energia -= cantidad
	}
	
	method quitarObjeto(unObjeto){
		self.objetos().remove(unObjeto)
	}
	
	method pelearManoAMano(unContrincante){
		unContrincante.disminuirEnergia(unContrincante.energia() / 2)
	}
	
	method pelearContraTodos(unosContrincantes){
		unosContrincantes.forEach({contrincante => self.pelearManoAMano(contrincante)})
	}
	
	method gritoDeVictoria(){
		return gritoDeVictoria
	}
}

object toro {
	var objetos = #{}
	var energia = 7800
	var objetoRobado
	const gritoDeVictoria = "No se metan con el toro"
	
	method objetos(){
		return objetos
	}
	
	method energia(){
		return energia
	}
	
	method disminuirEnergia(cantidad){
		energia -= cantidad
	}
	
	method quitarObjeto(unObjeto){
		objetos.remove(unObjeto)
	}
	
	method robarUltimoObjeto(unContrincante){
		objetoRobado = unContrincante.objetos().last()
		unContrincante.quitarObjeto(objetoRobado)
		objetos.add(objetoRobado)
	}
	
	method pelearManoAMano(unContrincante){
		unContrincante.disminuirEnergia(200 * unContrincante.objetos().size())
		self.robarUltimoObjeto(unContrincante)
	}
	
	method pelearContraTodos(unosContrincantes){
		unosContrincantes.forEach({contrincante => self.pelearManoAMano(contrincante)})
	}
	
	method gritoDeVictoria(){
		return gritoDeVictoria
	}
}
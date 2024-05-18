import Persona.*
import Agresiones.*

object actitudMiedosa {

	method permiteDenuncia(unaPersona, unaAgresion){
		return false
	}
	
	method actitudFrenteALaAmenaza(){
		return self
	}
}

class ActitudPaciente{
	var tolerancia 

	method permiteDenuncia(unaPersona, unaAgresion){
		return unaPersona.cantidadDeAgresionesCausadasPor(unaAgresion.agresor()) > tolerancia
	}
	
	method actitudFrenteALaAmenaza(){
		tolerancia *= 2
		return self
	}
}


object actitudAguerrida{
		
	method permiteDenuncia(unaPersona, unaAgresion){
		return unaPersona.fueAgredidaGravementePorUnFamiliar()
	}

	method actitudFrenteALaAmenaza(){
		return new ActitudPaciente(tolerancia = 5)
	}

}

object actitudMilitante{
	
	method permiteDenuncia(unaPersona, unaAgresion){
		return true
	}

	method actitudFrenteALaAmenaza(){
		return actitudAguerrida
	}

}
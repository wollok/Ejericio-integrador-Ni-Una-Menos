class Agresion {

	var lugar 
	var property agresor
	var palabras 
	
	method esGrave(){
		return palabras.any{unaPalabra => diccionario.esInaceptable(unaPalabra)}
	}
	
	method esIgnea(){
		return palabras.contains("fuego")
	}

}


class AgresionFisica inherits Agresion {
	
	var elemento 
	
	override method esGrave(){
		return true
	}
	
	override method esIgnea(){
		return elemento == "combustible" or super()
	}
}

object diccionario {

	var palabrasInaceptables = ["matar","asesinar","quemar"]
	
	method esInaceptable(unaPalabra){
		return palabrasInaceptables.contains(unaPalabra)
	}
	
}

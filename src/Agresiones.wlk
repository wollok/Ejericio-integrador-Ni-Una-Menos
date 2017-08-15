class Agresion {

	var lugar 
	var agresor
	var palabras 
	
	constructor (unLugar, unAgresor, unasPalabras) {
		lugar = unLugar
		agresor = unAgresor 
		palabras = unasPalabras
	}

	method esGrave(){
		return palabras.any{unaPalabra => diccionario.esInaceptable(unaPalabra)}
	}
	
	method esIgnea(){
		return palabras.contains("fuego")
	}
	
	method agresor() = agresor

}


class AgresionFisica inherits Agresion {
	
	var elemento 
	
	constructor (unLugar, unAgresor, unasPalabrasUtilizadas, unElemento) = super(unLugar, unAgresor, unasPalabrasUtilizadas){
		elemento = unElemento
	}
	
	override method esGrave(){
		return true
	}
	
	override method esIgnea(){
		return elemento == "combustible" or super()

//		return elemento == combustible or palabras.contains("fuego")
	}
}

object diccionario {

	var palabrasInaceptables = ["matar","asesinar","quemar"]
	
	method esInaceptable(unaPalabra){
		return palabrasInaceptables.contains(unaPalabra)
	}
	
}

object combustible { }

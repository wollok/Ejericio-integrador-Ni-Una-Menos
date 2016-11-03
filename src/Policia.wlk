object policia{
	
	var denuncias =[]
	var nroDenuncia = 0

	method recibirDenuncia(unaPersona, unaAgresion){
		nroDenuncia += 1
		denuncias.add(new Denuncia(nroDenuncia, unaAgresion, unaPersona))
	}
	method denunciaRegistradaPor(unaVictima){
		return !denuncias.isEmpty() and denuncias.get(nroDenuncia-1).victima() == unaVictima
	}
}
	
class Denuncia{

	var nroDenuncia
	var agresion
	var victima 
	
	constructor (unNroDenuncia, unaAgresion, unaVictima) {
		nroDenuncia = unNroDenuncia
		agresion = unaAgresion
		victima = unaVictima	
	}
	
	method victima() = victima
		
}
object policia{
	
	var denuncias =[]
	var nroDenuncia = 0

	method recibirDenuncia(unaPersona, unaAgresion){
		nroDenuncia += 1
		denuncias.add(
			new Denuncia(
				numero = nroDenuncia, 
				agresion = unaAgresion, 
				victima = unaPersona
			)
		)
	}
	method denunciaRegistradaPor(unaVictima){
		return !denuncias.isEmpty() and denuncias.get(nroDenuncia-1).victima() == unaVictima
	}
}
	
class Denuncia{

	var numero
	var agresion
	var property victima 
		
}
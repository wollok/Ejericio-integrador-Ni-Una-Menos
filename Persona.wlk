import Agresiones.*
import Policia.*
import Actitudes.*


class Persona{

	var agresiones = [] 
	var familia = []
	var property actitud
	

	method agregarFamiliar(familiar) {
		familia.add(familiar)
	}

	method recibirAgresion(unaAgresion){
		if (self.seAnimaADenunciar(unaAgresion)) {
			self.haceDenuncia(unaAgresion)
		}
		agresiones.add(unaAgresion)
	}
	
	method seAnimaADenunciar(unaAgresion){
		return self.agresionGraveDeFamiliar(unaAgresion) and actitud.permiteDenuncia(self,unaAgresion) 
	}
	
	method haceDenuncia(unaAgresion) {
		policia.recibirDenuncia(self, unaAgresion)
	}

	method agresionGraveDeFamiliar(unaAgresion){
		return familia.contains(unaAgresion.agresor()) and unaAgresion.esGrave() 
	}
	
	method fueAgredidaGravementePorUnFamiliar(){
		return agresiones.any{unaAgresion => self.agresionGraveDeFamiliar(unaAgresion)}		
	}

	method cantidadDeAgresionesCausadasPor(unAgresor){
		return agresiones.count{unaAgresion => unaAgresion.agresor() == unAgresor}
	}
	
	method participarDeOrganizacionSocial(){
		actitud = actitudMilitante
	}
	
	method recibirAcompaniamientoDe(unaPersona){
		actitud = unaPersona.actitud()
	}
	
	method recibirAmenazaDeMuerte(){
		actitud = actitud.actitudFrenteALaAmenaza()
	}

}
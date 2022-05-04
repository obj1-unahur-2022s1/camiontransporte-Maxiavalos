import cosas.*

object camion {
	const cosas=[knightRider, bumblebee, arena, paqueteLadrillos, bateriaAntiarea, contenedor, residuosRadioactivos, embalajeSeguridad]
	method cargar(cosa){cosas.add(cosa)}
	method descargar(cosa){cosas.remove(cosa)}
	method todoPesoPar()= cosas.all({ o => o.peso().even() })
	method hayAlgunoQuePesa(peso)= cosas.any({o => o.peso()==peso})
	method elDeNivel(nivel)= cosas.filter({o => o.nivelDePeligrosidad()== nivel}).first()
	method pesoTotal() = cosas.sum({ o => o.peso() }) + 1000
	method excedidoDePeso() = self.pesoTotal() > 2500

// ARREGLAR 

	method objetosQueSuperanPeligrosidad(nivel)= cosas.filter({ o => o.nivelDePeligrosidad()  > nivel})
	method objetosMasPeligrososQue(cosa)= cosas.filter({ o=> o.nivelDePeligrosidad() > cosa.nivelDePeligrosidad()})
	method puedeCircularEnRuta(nivelMaximoPeligrosidad)= cosas.all({ o => not o.objetosQueSuperanPeligrosidad(nivelMaximoPeligrosidad) and not self.excedidoDePeso() })   
//

	
	method tieneAlgoQuePesaEntre(min, max)= cosas.any({o => o.peso().between(min,max)})  
	method cosaMasPesada()= cosas.max({o => o.peso()})
	method peso()= cosas.map({o=> o.peso()})


}

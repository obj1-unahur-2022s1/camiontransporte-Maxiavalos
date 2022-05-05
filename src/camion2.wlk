import cosas2.*

object camion {
	const cosas=[]
	method cargar(cosa){
		cosas.add(cosa)
		cosa.consecuenciaDeCarga()
	}
	method descargar(cosa){cosas.remove(cosa)}
	method todoPesoPar()= cosas.all({ o => o.peso().even() })
	method hayAlgunoQuePesa(peso)= cosas.any({o => o.peso()==peso})
	method elDeNivel(nivel)= cosas.filter({o => o.nivelDePeligrosidad()== nivel}).first()
	method pesoTotal() = cosas.sum({ o => o.peso() }) + 1000
	method excedidoDePeso() = self.pesoTotal() > 2500
	method objetosQueSuperanPeligrosidad(nivel)= cosas.filter({ o => o.nivelDePeligrosidad()  > nivel})
	method objetosMasPeligrososQue(cosa)= cosas.filter({ o=> o.nivelDePeligrosidad() > cosa.nivelDePeligrosidad()})
	method puedeCircularEnRuta(nivelMaximoPeligrosidad)= cosas.all({ o => o.nivelDePeligrosidad() < nivelMaximoPeligrosidad  }) and not self.excedidoDePeso()  
	method tieneAlgoQuePesaEntre(min, max)= cosas.any({o => o.peso().between(min,max)})  
	method cosaMasPesada()= cosas.max({o => o.peso()})
	method peso()= cosas.map({o=> o.peso()})
	
	method totalBultos()= cosas.sum({o => o.bultos()})


}

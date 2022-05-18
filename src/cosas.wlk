/*
 * Muy Bien las cosas.
 * Recoda que podes usar el codigo corto con if tambien
 * por ejemplo en nivelDePeligrosidad de bumblebee
 */

object knightRider {
	method peso()= 500
	method nivelDePeligrosidad() = 10

}

object bumblebee {
	var property estaTransformadoEnAuto
	method peso()= 800
	method nivelDePeligrosidad() = if (estaTransformadoEnAuto){15}else{30}
}

object paqueteLadrillos{
	var property cantidadDeLadrillos
	method peso()= 2 * cantidadDeLadrillos
	method nivelDePeligrosidad() = 2

}


object arena {
	var property peso
	method peso()= peso
	method nivelDePeligrosidad()= 1

}

object bateriaAntiarea {
	var property estaConMisiles
	method peso(){
		if (estaConMisiles){
			return 300
		}
		else{return 200}
	}
	method nivelDePeligrosidad(){
		if (estaConMisiles){
			return 100
		}
		else{return 0}
	}


}

object contenedor {
	var cosasAdentro= []
	method agregarCosa(cosa)= cosasAdentro.add(cosa)
	method peso()= cosasAdentro.sum({c => c.peso()}) + 100
	method nivelDePeligrosidad(){
		if (cosasAdentro.isEmpty()){
			return 0
		}
		else{ return cosasAdentro.max( {o => o.nivelDePeligrosidad() }).nivelDePeligrosidad() }
	}

}

object residuosRadioactivos {
	var property peso
	method peso()= peso
	method nivelDePeligrosidad()= 200

}

object embalajeSeguridad {
	var property envuelveA
	method peso()= envuelveA.peso()
	method nivelDePeligrosidad()= envuelveA.nivelDePeligrosidad() * 0.5
	
}





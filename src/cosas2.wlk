/*
 * Muy Bien
 */
object knightRider {
	method peso()= 500
	method nivelDePeligrosidad() = 10
	method bultos()=1
	method consecuenciaDeCarga(){}

}

object bumblebee {
	var property estaTransformadoEnAuto
	method peso()= 800
	method bultos()=2
	method nivelDePeligrosidad(){
		if (estaTransformadoEnAuto){
			return 15
		}
		else{
			return 30
		}
	}
	method consecuenciaDeCarga(){estaTransformadoEnAuto=false}

}

object paqueteLadrillos{
	var property cantidadDeLadrillos
	method peso()= 2 * cantidadDeLadrillos
	method nivelDePeligrosidad() = 2
	method bultos(){
		if (cantidadDeLadrillos<=100){return 1}
		else if (cantidadDeLadrillos.between(101,300)){return 2}
		else{return 3}
	}
	method consecuenciaDeCarga(){cantidadDeLadrillos += 12}
}


object arena {
	var property peso
	method peso()= peso
	method nivelDePeligrosidad()= 1
	method bultos()=1
	method consecuenciaDeCarga(){peso +=12}

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
	
	method bultos(){
		if (estaConMisiles){return 2}
		else{return 1}
	}
	method consecuenciaDeCarga(){estaConMisiles= true}


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
	
	method bultos()= cosasAdentro.sum({c => c.bultos()}) + 1
	method consecuenciaDeCarga()= cosasAdentro.forEach({c => c.consecuenciaDeCarga()})

}

object residuosRadioactivos {
	var property peso
	method peso()= peso
	method nivelDePeligrosidad()= 200
	method bultos()=1
	method consecuenciaDeCarga(){peso+= 15}

}

object embalajeSeguridad {
	var property envuelveA
	method peso()= envuelveA.peso()
	method nivelDePeligrosidad()= envuelveA.nivelDePeligrosidad() * 0.5
	method bultos()=2
	method consecuenciaDeCarga(){}
	
}




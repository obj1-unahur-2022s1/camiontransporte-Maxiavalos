object knightRider {
	method peso()= 500
	method nivelDePeligrosidad() = 10

}

object bumblebee {
	var property estaTransformadoEnAuto= false
	var property estaComoRobot= false
	method peso()= 800
	method nivelDePeligrosidad(){
		if (estaTransformadoEnAuto){
			return 15
		}
		else{
			return 30
		}
	}

}

object paqueteLadrillos{
	var property cantidadDeLadrillos= 1
	method peso()= 2 * cantidadDeLadrillos
	method nivelDePeligrosidad() = 2

}


object arena {
	var property peso= 0 ////// inicializado para pruebas en consola
	method peso()= peso
	method nivelDePeligrosidad()= 1

}

object bateriaAntiarea {
	var property estaConMisiles= false
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
	var property cosasAdentro= [arena] //////// inicializado para pruebas en consola
	method agregarCosa(cosa)= cosasAdentro.add(cosa)
	method peso()= cosasAdentro.size() + 100
	method nivelDePeligrosidad(){
		if (cosasAdentro.isEmpty()){
			return 0
		}
		else{ return cosasAdentro.max( {o => o.nivelDePeligrosidad() }) }
	}

}

object residuosRadioactivos {
	var property peso= 0 //////// inicializado para pruebas en consola
	method peso()= peso
	method nivelDePeligrosidad()= 200

}

object embalajeSeguridad {
	var property cosaAdentro= arena // inicializado para pruebas en consola
	method peso()= cosaAdentro.peso()
	method nivelDePeligrosidad()= cosaAdentro.nivelDePeligrosidad() * 0.5
	
}





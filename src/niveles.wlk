import wollok.game.*
import juego.*
import music.*
import portadas.*
import config.*
import visuales.*


class Nivel{
	var property image
	var property siguiente
	var property nroNivel
	//var property imageNivel
	
	method iniciar(){game.boardGround(image)}
	method siguienteNivel(){
		//if(invasion.estaVacia()){
			//game.clear() //nose
		//	siguiente.iniciar()
		//}
		//else if(jugador.vidas()== 0){gameOver.ejecutar()}
	}
}

object nivel1 inherits Nivel(image="nivel1.png", siguiente=nivel2, nroNivel = "nroNivel.png"){
	override method iniciar(){
		super()
		game.addVisualIn(nroNivel, game.at(1,29))
		jugador.iniciar()
		invasion.iniciarGrupo()
		arbnivel1.iniciar()
		self.siguienteNivel()
	}
	/* 
	override method siguienteNivel(){
		if(invasion.estaVacia()){
			game.clear() //nose
			nivel2.iniciar()
		}
	}*/
}
object nivel2 inherits Nivel(image="nivel2.png", siguiente=nivel3, nroNivel = "nroNivel.png"){
	override method iniciar(){}
	override method siguienteNivel(){}
}
object nivel3 inherits Nivel(image="nivel3.png", siguiente=null, nroNivel = "nroNivel.png"){}
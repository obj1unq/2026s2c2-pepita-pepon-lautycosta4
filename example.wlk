object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia/10
	}

	method cansada() {
		return energia < 30
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}
//EJERCICIO 1
object pepon {
    var energia = 30
  method set_energia(_energia) {
	energia = _energia
  }
  
  method energia() {
    return energia
  }
  method comer(comida) {
	energia = energia + comida.energiaQueAporta() / 2
  }
  
  method volar(distancia) {
	energia = energia - 20 - 2*distancia
  }

  method cansada() {
	return energia < 34
  }
 }

 //EJERCICIO 2
object rebeca {
	var ave = pepita
	var cantidad_cenas = 0

  method entrenar(_ave){
	ave = _ave
	cantidad_cenas = 0
  }

  method alimentar(alimento) {
	ave.comer(alimento)
	cantidad_cenas = cantidad_cenas + 1
  }

  method cenas(){
	return cantidad_cenas
  }
 }
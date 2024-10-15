

//COLORES
object rojo {
  method esFuerte() {
    return(true)
  }
  method peso() = peso

}

object verde {
  method esFuerte() {
    return(true)
  }
}

object celeste {
  method esFuerte() {
    return(false)
  }
}

object pardo {
  method esFuerte() {
    return(false)
  }
}
// MATERIALES
object cobre {
  method esBrillante() { return true }
}

object vidrio {
  method esBrillante() { return true }
}

object lino {
  method esBrillante() { return false }
}

object madera {
  method esBrillante() { return false }
}

object cuero {
  method esBrillante() { return false }
}
// OBJETOS
object remera {
  method color() { return rojo }
  method peso() { return 800 }
  method material() { return lino}
  method esDeColorFuerte() {self.color().esFuerte()}
  method esDeMaterialQueBrilla(){ return self.material().esBrillante()}
    
}
object pelota {
  method color() { return pardo }
  method peso() { return 1300 }
  method material() { return cuero}
  method esDeColorFuerte() {self.color().esFuerte()}
  method esDeMaterialQueBrilla(){ return self.material().esBrillante()}
}
object biblioteca {
  method color() { return verde }
  method peso() { return 8000 }
  method material() { return madera}
  method esDeMaterialQueBrilla(){ return self.material().esBrillante()}
}
object munieco {
  var peso = 0                        // podría ser 0 o 10 cualquier nro para inicializar

  method peso() { return peso }  
  method peso(unPeso) {peso = unPeso}     //importante x ser Variable Indefinida 
  method color() { return celeste }
  method material() { return vidrio}
  method esDeColorFuerte() {self.color().esFuerte()}
  method esDeMaterialQueBrilla(){ return self.material().esBrillante()}
}
object placa {
  var color = rojo        //podría ser cualquier color para inicializar
  var peso = 0
  method color() { return color }
  method color(unColor) {color = unColor}
  method peso () {return peso}            //consulta
  method peso(unPeso) { peso = unPeso}    //indicación - por convención
  method material() { return cobre}
  method esDeColorFuerte() {self.color().esFuerte()}
  method esDeMaterialQueBrilla(){ return self.material().esBrillante()}
}
object cajita {
  var objetoAdentro = placa

  method objetoAdentro() = objetoAdentro
  method objetoAdentro(unObjeto) {objetoAdentro = unObjeto}
  method color() { return rojo }
  method material() { return cobre} 
  method peso() { 400 + objetoAdentro.peso()}

  method esDeColorFuerte() {self.color().esFuerte()}
  method esDeMaterialQueBrilla(){ return self.material().esBrillante()}
}
import objetos.*

object rosa {
  method leGusta(algo) {
    return algo.peso()<=2000
  }
}

object estefania {
  method leGusta(algo) {
    return algo.esDeColorFuerte()
  }
}

object luisa {
  method leGusta(algo) {
    return algo.esDeMaterialQueBrilla()
  }
}

object juan {
  method leGusta(algo) {
    return not algo.esDeColorFuerte()
    || algo.peso().between(1200, 1800)
  }
}

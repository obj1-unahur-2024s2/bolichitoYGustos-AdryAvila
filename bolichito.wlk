import objetos.*
import personas.*

object bolichito {
  var objetoEnMostrador = pelota        //Ambas variables se deben inicializar con algún objeto
  var objetoEnVidriera = munieco        // para que no chille

  method objetoEnMostrador() = objetoEnMostrador
  method objetoEnMostrador(algoEnMostrador) {objetoEnMostrador = algoEnMostrador}
 
  method objetoEnVidriera() = objetoEnVidriera
  method objetoEnVidriera(algoEnVidriera) {objetoEnVidriera = algoEnVidriera}
 
  method esBrillante() = objetoEnMostrador.esBrillante()
                        && objetoEnVidriera.esBrillante()
 
 method esMonocromatico() = objetoEnMostrador.color() == objetoEnVidriera.color()

 method estaEquilibrado() = objetoEnMostrador.peso() > objetoEnVidriera.peso()
   
 method tieneObjetoDeColor(unColor) = objetoEnMostrador.color() == unColor ||       // ACA IMPORTANTE == unColor
                                        objetoEnVidriera.color() == unColor         // iguala al argumento
 method puedeMejorar() = ! self.estaEquilibrado() || self.esMonocromatico() 

 method puedeOfrecerA(unaPersona) = unaPersona.leGusta (objetoEnMostrador) 
                                || unaPersona.leGusta (objetoEnVidriera )
                                
} 
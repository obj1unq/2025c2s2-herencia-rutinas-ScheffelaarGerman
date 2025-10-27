import rutinas.*
import club.*
import gimnasia.*

class Persona {
     var peso
    
    method aplicarRutina (rutina, tiempo){
        if (self.puedeEjecutar(rutina,tiempo)){
              peso = peso - self.pesoQuePierdeCon(rutina, tiempo)
        }
     }
    method pesoQuePierdeCon(rutina, tiempo){
        return rutina.caloriasQuemadas(tiempo) / self.kilosPorCaloria()
    }
    method puedeEjecutar(rutina,tiempo) {
        return true
    }
    method kilosPorCaloria(){
         return 1
    }
    method tiempo(){
         return 0
    }
}
class PersonaSedentaria inherits Persona{
     var property tiempoDeRutina 
    
    override method kilosPorCaloria(){
         return 7000
    }
    override method puedeEjecutar(rutina, tiempo ){
         return peso > 50
    }
    override method tiempo() {
         return tiempoDeRutina
     }
    method caloriasQueGastaria(rutina) {
         return rutina.caloriasQuemadas(self.tiempo())
     }
}
class PersonaAtleta inherits Persona{
     const tiempoDeRutina = 90

    override method pesoQuePierdeCon(rutina, tiempo){
         return super(rutina,tiempo) -1 
    }
    
    override method kilosPorCaloria(){
         return 8000
    }
    override method puedeEjecutar(rutina, tiempo){
         return rutina.caloriasQuemadas(tiempoDeRutina ) > 10000
     }
     override method tiempo() {
       return tiempoDeRutina
    }
}

 
import rutinas.*
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
     var tiempoDeRutina 
    
    override method kilosPorCaloria(){
         return 7000
    }
    override method puedeEjecutar(rutina,tiempo){
         return peso > 50
    }
    override method tiempo(){
        return tiempoDeRutina
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
    override method puedeEjecutar(rutina,tiempo){
         return peso > 50
    }
    override method tiempo(){
        return tiempoDeRutina
    }
}

 
import rutinas.*
import club.*
import gimnasia.*
class Persona{
      var property peso

     
     method practicar(rutina) {
    if (self.puedePracticar(rutina)) {
        peso = peso - self.kilosQueBaja(rutina)
    }
}

     method validarPracticar(rutina){
          if (! self.puedePracticar(rutina)){
                self.error("No se puede practicar" + rutina)
          }
     }
     method kilosQueBaja(rutina){
           return self.calorias(rutina) / self.kilosPorCaloria()
     }
     method calorias(rutina){
          return rutina.calorias(self.tiempo())
     }
     method puedePracticar(rutina) { return }
     method tiempo() { return }
     method kilosPorCaloria(){ return }
}

class Sedentaria inherits Persona{
     const property tiempo

     override method puedePracticar(rutina){
          return self.peso() > 50
     }
      override method kilosPorCaloria() {
        return 7000
    }
}

class Atleta inherits Persona{

     override method kilosQueBaja(rutina){
          return super(rutina) - 1
      }
     override method tiempo(){
          return 90
      }
     override method puedePracticar(rutina){
          return self.calorias(rutina) > 10000
     }
     override method kilosPorCaloria() {
        return 8000
    } 
}
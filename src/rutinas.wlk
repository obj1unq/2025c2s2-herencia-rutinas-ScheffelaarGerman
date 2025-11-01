import personas.*
import club.*
import gimnasia.*
//**  Clase Abstracta  **//
class Actividad{ 

    method calorias(tiempo){
         return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()
     }
    method descanso(tiempo) {
         return 0
    }
    method intensidad() {
        return 1
    }
}

//**  Actividades  **//
class Running inherits Actividad {
     const property intensidad

    override method descanso(tiempo){ 
        if (tiempo >20){
            return 5
        }else {
            return 2
        }
    }
}
class Maraton inherits Running {
     
     override method calorias(tiempo){
        return super(tiempo) * 2
     }
}

class Remo inherits Actividad{

     override method intensidad(){
        return 1.3
     }
    override method descanso(tiempo){
        return tiempo / 5
    }
}

class RemoDeCompeticion inherits Remo {

     override method intensidad(){
        return 1.7
     }
    override method descanso(tiempo){
         return (super(tiempo)-3).max(2)
    }
}

//** Rutina  **//
class Rutina {
     const property actividad
    
     method calorias(tiempo){
        return actividad.calorias(tiempo) 
     }
}
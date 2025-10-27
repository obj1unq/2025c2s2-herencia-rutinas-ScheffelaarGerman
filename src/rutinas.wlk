import personas.*
import club.*
import gimnasia.*
class Rutina {
    
    method caloriasQuemadas(tiempo){
         return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()
     } 
    method descanso(tiempo){
         return 0
     }
    method intensidad(){
         return 0
     }
}

class Running inherits Rutina {
    
    override method intensidad(){
        return 1.2
     }
    override method descanso(tiempo){
        if (tiempo>20){
             return 5 
         } else {
             return  2
         }
    }
}

class Maraton inherits Running {
     
    override method caloriasQuemadas(tiempo){
         return super(tiempo) * 2
    }
}

class Remo inherits Rutina {
    
    override method intensidad(){
         return 1.3
     }
    override method descanso(tiempo){
         return tiempo/5
        }
    }

class RemoDeCompeticion inherits Remo {
   
    override method intensidad(){
        return 1.7
     }
    override method descanso(tiempo){
         return 2.max(tiempo/5) 
        }
    }


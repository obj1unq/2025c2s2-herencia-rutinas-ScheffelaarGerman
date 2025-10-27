import rutinas.*
import personas.*
import gimnasia.*

class Club {
    var property predios = #{}

     method mejorPredioDelClubPara(persona){
         return predios.max({ predio => predio.caloriasTotalesPara(persona)})
     }
    method prediosTranquisDelClubPara(persona) {
         return predios.filter({ predio => predio.tieneRutinaTranquiPara(persona) })
     }
    method rutinasMasExigentesPara(persona){
        return predios.map({ predio => predio.rutinaMasExigentePara(persona)})
    }
}
class Predio {
    var property rutinas = #{}

    method caloriasTotalesPara(persona){
        return rutinas.sum({rutina => persona.caloriasQueGastaria(rutina)})

    }
    method tieneRutinaTranquiPara(persona){
        return rutinas.any({rutina => persona.caloriasQueGastaria(rutina)<500})

    }
    method rutinaMasExigentePara(persona){
        return rutinas.max({ rutina=> persona.caloriasQueGastaria(rutina)})
    }
}

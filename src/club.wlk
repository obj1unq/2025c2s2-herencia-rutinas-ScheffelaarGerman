class Club{
    const property predios

    method mejorPredio(persona){
         return predios.max({predio => predio.calorias(persona) })

    }
    method prediosTranqui(persona){
         return predios.filter({predio => predio.esTranqui(persona)})

    }
    method rutinasMasExigentes(persona){
        return predios.map({ predio => predio.rutinaMasExigente(persona)}).asSet()

    }
}
class Predio {
    const property rutinas

    method calorias(persona){
         return rutinas.sum({rutina => persona.calorias(rutina)})
    }
    method esTranqui(persona){
        return rutinas.any({rutina => persona.calorias(rutina) < 500})
    }
    method rutinaMasExigente(persona){
        return rutinas.max({rutina => persona.calorias(rutina)})
    }

}

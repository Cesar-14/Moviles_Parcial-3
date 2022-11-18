//
//  Asistencia.swift
//  MovilesParcial3
//
//  Created by Cesar Escobedo on 16/11/22.
//

import Foundation

class Asistencia {
    var materia : String
    var hora : String
    var maestro : String
    var asistencia : Bool
    var img : String
    
    init(materia: String, hora: String, maestro: String, asistencia: Bool, img: String) {
        self.materia = materia
        self.hora = hora
        self.maestro = maestro
        self.asistencia = asistencia
        self.img = img
    }
}

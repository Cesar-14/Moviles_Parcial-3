//
//  InicioController.swift
//  MovilesParcial3
//
//  Created by Cesar Escobedo on 16/11/22.
//

import UIKit

class InicioController : UIViewController {
    
    var alumno : [Alumno] = []
    var contacto : [Contacto] = []
    var asistencia : [Asistencia] = []
    var evaluacion : [Evaluacion] = []
    var clase : [Clases] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Perfil
        alumno.append(Alumno(nombre: "César Alejandro Escobedo Cota", matricula: "199175", foto: "perfil"))
        
        //Contacto emergencia
        contacto.append(Contacto(nombre: "Jesus Ignacio", parentesco: "Papá", teluno: "66881768849", teldos: "6688617943"))
        
        //Asistencia
        asistencia.append(Asistencia(materia: "Modelado 3D", hora: "10:00am", maestro: "Memo", asistencia: true, img: "palomita"))
        asistencia.append(Asistencia(materia: "Historia", hora: "12:00am", maestro: "Carlos A.", asistencia: true, img: "sinMarcar"))
        asistencia.append(Asistencia(materia: "Tratamiento de imágen", hora: "13:00am", maestro: "Martín E.", asistencia: false, img: "sinMarcar"))
        asistencia.append(Asistencia(materia: "Redes computacionales", hora: "14:00am", maestro: "Eduardo S.", asistencia: true, img: "tacha"))
        asistencia.append(Asistencia(materia: "Diosito", hora: "15:00am", maestro: "Pepe D.", asistencia: false, img: "palomita"))
        asistencia.append(Asistencia(materia: "Moviles", hora: "16:00am", maestro: "Emiliano", asistencia: true, img: "palomita"))
        asistencia.append(Asistencia(materia: "Modelado 3D", hora: "10:00am", maestro: "Memo", asistencia: true, img: "tacha"))
        asistencia.append(Asistencia(materia: "Historia", hora: "12:00am", maestro: "Carlos A.", asistencia: true, img: "sinMarcar"))
        asistencia.append(Asistencia(materia: "Tratamiento de imágen", hora: "13:00am", maestro: "Martín E.", asistencia: false, img: "palomita"))
        asistencia.append(Asistencia(materia: "Redes computacionales", hora: "14:00am", maestro: "Eduardo S.", asistencia: true, img: "sinMarcar"))
        asistencia.append(Asistencia(materia: "Diosito", hora: "15:00am", maestro: "Pepe D.", asistencia: false, img: "palomita"))
        asistencia.append(Asistencia(materia: "Moviles", hora: "16:00am", maestro: "Emiliano", asistencia: true, img: "palomita"))
        
        //Clases
        clase.append(Clases(clase: "Modelado 3D", hora: "10:00am", profe: "Memo"))
        clase.append(Clases(clase: "Moviles", hora: "7:00am", profe: "Emiliano"))
        clase.append(Clases(clase: "Historia", hora: "1:00pm", profe: "Carla"))
        clase.append(Clases(clase: "redes computacionales", hora: "12:00pm", profe: "Ruben"))
        clase.append(Clases(clase: "Diosito", hora: "2:00pm", profe: "Jorge"))
        
        
        
        
    }
    
}

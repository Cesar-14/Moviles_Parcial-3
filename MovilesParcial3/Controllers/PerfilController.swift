//
//  PerfilController.swift
//  MovilesParcial3
//
//  Created by Cesar Escobedo on 17/11/22.
//

import UIKit

class PerfilController: UIViewController {
    
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblMatricula: UILabel!
    @IBOutlet weak var Imagen: UIImageView!
    
    @IBOutlet weak var lblNombreContacto: UILabel!
    @IBOutlet weak var lblParentesco: UILabel!
    @IBOutlet weak var lblTelefono1: UILabel!
    @IBOutlet weak var lblTelefono2: UILabel!
    
    var alumno : [Alumno] = []
    var contacto : [Contacto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alumno.append(Alumno(nombre: "César Alejandro Escobedo Cota", matricula: "199175", foto: "perfil"))
        
        contacto.append(Contacto(nombre: "Jesus Ignacio", parentesco: "Papá", teluno: "66881768849", teldos: "6688617943"))
        
        lblNombre.text = alumno[0].nombre
        lblMatricula.text = alumno[0].matricula
        Imagen.image = UIImage(named: "perfil")
        
        lblNombreContacto.text = contacto[0].nombre
        lblParentesco.text = contacto[0].parentesco
        lblTelefono1.text = contacto[0].teluno
        lblTelefono2.text = contacto[0].teldos
        
    }
    
}


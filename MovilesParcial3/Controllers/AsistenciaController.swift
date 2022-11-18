//
//  AsistenciaController.swift
//  MovilesParcial3
//
//  Created by Cesar Escobedo on 17/11/22.
//

import UIKit

class AsistenciaController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlet
    @IBOutlet weak var tvAsistencia: UITableView!
    
    //Variables
    var asistencia : [Asistencia] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvAsistencia.backgroundColor = .clear
        
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
       
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return asistencia.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAsistencia") as!
        CeldaAsistencia
        
        celda.lblClase.text = asistencia[indexPath.row].materia
        celda.lblHora.text = asistencia[indexPath.row].hora
        celda.lblProfe.text = asistencia[indexPath.row].maestro
        //celda.img.image = UIImage(named: "\(asistencia.img)")

    
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
}

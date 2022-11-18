//
//  ClasesController.swift
//  MovilesParcial3
//
//  Created by Cesar Escobedo on 17/11/22.
//

import UIKit

class ClasesController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlet
    @IBOutlet weak var tvClases: UITableView!
    
    //Variables
    var clase : [Clases] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvClases.backgroundColor = .clear
        
        clase.append(Clases(clase: "Modelado 3D", hora: "10:00am", profe: "Memo"))
        clase.append(Clases(clase: "Moviles", hora: "7:00am", profe: "Emiliano"))
        clase.append(Clases(clase: "Historia", hora: "1:00pm", profe: "Carla"))
        clase.append(Clases(clase: "redes computacionales", hora: "12:00pm", profe: "Ruben"))
        clase.append(Clases(clase: "Diosito", hora: "2:00pm", profe: "Jorge"))
        clase.append(Clases(clase: "Modelado 3D", hora: "10:00am", profe: "Memo"))
        clase.append(Clases(clase: "Moviles", hora: "7:00am", profe: "Emiliano"))
        clase.append(Clases(clase: "Historia", hora: "1:00pm", profe: "Carla"))
        clase.append(Clases(clase: "redes computacionales", hora: "12:00pm", profe: "Ruben"))
        clase.append(Clases(clase: "Diosito", hora: "2:00pm", profe: "Jorge"))
       
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clase.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaClases") as!
        CeldaClases
        
        celda.lblClase.text = clase[indexPath.row].clase
        celda.lblHora.text = clase[indexPath.row].hora
        celda.lblprofe.text = clase[indexPath.row].profe
    
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

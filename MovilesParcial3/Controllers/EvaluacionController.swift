//
//  EvaluacionController.swift
//  MovilesParcial3
//
//  Created by Cesar Escobedo on 17/11/22.
//

import UIKit

class EvaluacionController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvEvaluacion: UITableView!
    
    
    var evaluacion : [Evaluacion] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvEvaluacion.backgroundColor = .clear
        
        evaluacion.append(Evaluacion(materia: "Modelado 3D", nombre: "Memo", calif: "10"))
       
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return evaluacion.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaEvaluacion") as!
        CeldaEvaluacion
        
//        celda.lblClase.text = asistencia[indexPath.row].materia

    
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    
}

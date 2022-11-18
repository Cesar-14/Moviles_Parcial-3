//
//  PagosController.swift
//  MovilesParcial3
//
//  Created by Cesar Escobedo on 17/11/22.
//

import UIKit

class PagosController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlet
    
    @IBOutlet weak var tvPagos: UITableView!
    @IBOutlet weak var tvPagosPendientes: UITableView!
    
    
    //Variables
    var pagos : [Pagos] = []
    var pagosPendientes : [Pagos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvPagos.backgroundColor = .clear
        tvPagosPendientes.backgroundColor = .clear
        
        pagos.append(Pagos(mes: "Enero", limite: "03 Marzo", costo: "$15000"))
        pagos.append(Pagos(mes: "Enero", limite: "03 Marzo", costo: "$15000"))
        pagos.append(Pagos(mes: "Enero", limite: "03 Marzo", costo: "$15000"))
        pagos.append(Pagos(mes: "Enero", limite: "03 Marzo", costo: "$15000"))
        pagos.append(Pagos(mes: "Enero", limite: "03 Marzo", costo: "$15000"))
        pagos.append(Pagos(mes: "Enero", limite: "03 Marzo", costo: "$15000"))
        pagos.append(Pagos(mes: "Enero", limite: "03 Marzo", costo: "$15000"))

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pagos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPagos") as!
        CeldaPagos
        
        celda.lblMes.text = pagos[indexPath.row].mes
        celda.lblLimite.text = pagos[indexPath.row].limite
        celda.lblCosto.text = pagos[indexPath.row].costo
        
        return celda
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
}

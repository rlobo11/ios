//
//  Comprobante.swift
//  Bitcoins_Laura
//
//  Created by BCR on 25/4/18.
//  Copyright © 2018 JCMA. All rights reserved.
//

import UIKit

class Comprobante: UIViewController {
    
    
    var data: String?
    var Cantidad: String?
    var Monto :  String?
    var MontoPagar : String?
    var Cambio: String?

    
    @IBOutlet weak var lblCantidad: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var lblMonto: UILabel!
    @IBOutlet weak var lblCambio: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblCantidad.text = Cantidad
        lblMonto.text = Monto
        lblTotal.text = MontoPagar
        lblCambio.text = Cambio
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

//
//  CambioViewController.swift
//  prueba
//
//  Created by BCR on 24/4/18.
//  Copyright © 2018 JCMA. All rights reserved.
//

import UIKit


class CambioViewController: UIViewController {
    
    internal var Cantidad: String?
    internal var Monto: String?
    internal var MontoPagar: String?
    internal var Cambio: String?
    

    @IBOutlet weak internal var lblCantidad: UILabel!
    @IBOutlet weak internal var lblTotal: UILabel!
    @IBOutlet weak internal var lblMonto: UILabel!
    @IBOutlet weak internal var lblCambio: UILabel!
    

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


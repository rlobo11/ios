//
//  CompraBitcoins.swift
//  Bitcoins_Laura
//
//  Created by BCR on 25/4/18.
//  Copyright © 2018 JCMA. All rights reserved.
//

import UIKit

class CompraBitcoins: UIViewController {
    
    let cPrecioBitcoin = 10
    var vCantidad : Int = 0
    var vMonto : Double = 0
    var vMontoPagar : Double = 0
    var vCambio : Double = 0
    var EsCorrecto : Bool = true
    var data : String?
    
   
    

    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var txtMonto: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblNombre.text = data
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        

        if segue.identifier == "Comprobante"{
            let Cantidad = segue.destination as? Comprobante
            let Monto = segue.destination as? Comprobante
            let MontoPagar = segue.destination as? Comprobante
            let Cambio = segue.destination as? Comprobante
            
            if let svc = Cantidad {
                svc.Cantidad = String(vCantidad)
            }
            
            if let svc = Monto {
                svc.Monto = String(vMonto)
            }
            
            if let svc = MontoPagar {
                svc.MontoPagar = String(vMontoPagar)
            }
            
            if let svc = Cambio {
                svc.Cambio = String(vCambio)
            }
            
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return EsCorrecto
    }
        
    
    @IBAction func btnComprar(_ sender: UIButton) {
        
        EsCorrecto = true
        
        if txtMonto.text != "" {
            vMonto = Double(txtMonto.text!)!
            Comprar()
        }else{
            print("Introduzca el monto con el que va a pagar.")
            EsCorrecto = false
            }
    }
    
    
    func Comprar (){
        vCantidad = Int(vMonto)/cPrecioBitcoin
        vMontoPagar = Double(vCantidad * cPrecioBitcoin)
        
        if vMonto > vMontoPagar{
            vCambio = Cambio(pMonto: vMonto, pMontoPagar: vMontoPagar)
        }
    }
    
    func Cambio (pMonto: Double, pMontoPagar:Double)-> Double{
        return pMonto - pMontoPagar
        
    }
    
    
    
}


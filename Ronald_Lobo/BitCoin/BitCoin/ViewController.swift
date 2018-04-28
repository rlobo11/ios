//
//  ViewController.swift
//  BitCoin
//
//  Created by BCR on 24/4/18.
//  Copyright © 2018 JCMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cPrecioBitcoin = 10
    var vCantidad : Int = 0
    var vMonto : Double = 0
    var vMontoPagar : Double = 0
    var vCambio : Double = 0
    var EsCorrecto : Bool = true

    
    @IBOutlet weak var txtMonto: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return EsCorrecto
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "dataSegue"{
            let CambioVC = segue.destination as? CambioViewController
            
            if let svc = CambioVC {
                svc.Cantidad = String(vCantidad)
                svc.Monto = String(vMonto)
                svc.MontoPagar = String(vMontoPagar)
                svc.Cambio = String(vCambio)
            }
        }
    }
    
    @IBAction func btnComprar_click(_ sender: Any) {
        
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


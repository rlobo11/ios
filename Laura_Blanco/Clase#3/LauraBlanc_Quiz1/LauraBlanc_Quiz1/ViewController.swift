//
//  ViewController.swift
//  LauraBlanc_Quiz1
//
//  Created by BCR on 21/4/18.
//  Copyright © 2018 JCMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let precioBitcoin = 10
    var cantidad : Int = 0
    var monto : Double = 0
    var vMontoPagar : Double = 0
    var vCambio : Double = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func Comprar (cantidad:Int, monto : Double){
        if cantidad > 0 {
            vMontoPagar = Double(cantidad * precioBitcoin)
            if vMontoPagar < monto {
                
            }
            
            
        }
        
    }
    
    func Cambio (monto:Int){
        
    }


}


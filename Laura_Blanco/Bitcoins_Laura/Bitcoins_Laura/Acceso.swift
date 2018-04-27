//
//  ViewController.swift
//  Bitcoins_Laura
//
//  Created by BCR on 25/4/18.
//  Copyright © 2018 JCMA. All rights reserved.
//

import UIKit

class Acceso: UIViewController {
    
    var EsCorrecto : Bool = true

    @IBOutlet weak var txtNombre: UITextField!
    
    
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
    
    @IBAction func btnAcceso(_ sender: UIButton) {
       
        
        if txtNombre.text == "" {
            EsCorrecto = false
        }else{
             EsCorrecto = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "Acceso"{
            let Nombre = segue.destination as? CompraBitcoins
            
            if let svc = Nombre {
                svc.data = txtNombre.text
            }
            
        }
    }


}


//
//  ViewController.swift
//  Bitcoins_Laura
//
//  Created by BCR on 25/4/18.
//  Copyright © 2018 JCMA. All rights reserved.
//

import UIKit

class Acceso: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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


//
//  ViewController.swift
//  prueba
//
//  Created by BCR on 24/4/18.
//  Copyright © 2018 JCMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var txtMonto: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "dataSegue"{
            let CambioVC = segue.destination as? CambioViewController
            
            if let svc = CambioVC {
                svc.data = txtMonto.text
            }
            
        }
    }

    
}


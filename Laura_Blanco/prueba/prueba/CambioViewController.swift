//
//  CambioViewController.swift
//  prueba
//
//  Created by BCR on 24/4/18.
//  Copyright © 2018 JCMA. All rights reserved.
//

import UIKit

class CambioViewController: UIViewController {
    
    
    var data: String?
    
    @IBOutlet weak var lblCambio: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblCambio.text = data
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}


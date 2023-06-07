//
//  InductorViewController.swift
//  RLC Calculator
//
//  Created by woojin Choi on 2023/06/08.
//

import UIKit

class InductorViewController: UIViewController {

    @IBOutlet weak var inductor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inductor.layer.cornerRadius = 30
    }
    
    
}

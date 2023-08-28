//
//  ToggleLampViewController.swift
//  ToggleLamp
//
//  Created by woojin Choi on 2023/08/28.
//

import UIKit

class ToggleLampViewController: UIViewController {

    var isLampOn = false
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    func toggleButton() {
         isLampOn.toggle()
        
        if isLampOn {
            image.image = UIImage(systemName: "lightbulb.fill")
            label.text = "Lamp is On"
        } else {
            image.image = UIImage(systemName: "lightbulb")
            label.text = "Lamp is OFF"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toggleButton()
        button.tintColor = UIColor.systemYellow
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        toggleButton()
    }
}#imageLiteral(resourceName: "simulator_screenshot_0DDE8CCC-E172-4E38-B9F6-3AFAA78113FC.png")

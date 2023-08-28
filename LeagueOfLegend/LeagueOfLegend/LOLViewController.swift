//
//  LOLViewController.swift
//  LeagueOfLegend
//
//  Created by woojin Choi on 2023/08/28.
//

import UIKit

class LOLViewController: UIViewController {
    
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var champName: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    let lines = ["TOP":"dpad.up.filled", "JUG":"dpad.fill", "MID":"dpad.left.filled", "ADC":"dpad.down.filled", "SUP":"dpad"]
    let champNames = ["Fiora", "Nunu", "Akali", "Kaisa", "Yumi"]
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let randomLine = lines.randomElement()
        lineLabel.text = randomLine!.key
        let imageName = randomLine!.value
        imageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        champName.text = champNames.randomElement()!
    }
    
}

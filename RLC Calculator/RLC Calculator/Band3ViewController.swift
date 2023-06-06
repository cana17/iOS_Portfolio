//
//  Band3ViewController.swift
//  RLC Calculator
//
//  Created by woojin Choi on 2023/06/06.
//

import UIKit

class Band3ViewController: UIViewController {

    

    @IBOutlet weak var hundredsPlaceLabel: UILabel!
    @IBOutlet weak var tensPlaceLabel: UILabel!
    @IBOutlet weak var onesPlaceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    @IBAction func blackHundredsButtonTapped(_ sender: UIButton) {
        hundredsPlaceLabel.text = "0"
    }
    
    @IBAction func blackTensPlaceButtonTapped(_ sender: UIButton) {
        tensPlaceLabel.text = "0"
    }
    
    @IBAction func blackOnesButtonTapped(_ sender: UIButton) {
        onesPlaceLabel.text = "Ω"
    }
    
    @IBAction func brownHundredsButtonTapped(_ sender: Any) {
        hundredsPlaceLabel.text = "1"
    }
    
    @IBAction func brownTensPlaceButtonTapped(_ sender: UIButton) {
        tensPlaceLabel.text = "1"
    }
    
    @IBAction func brownOnesButtonTapped(_ sender: UIButton) {
        onesPlaceLabel.text = "0 Ω"
    }
    
    @IBAction func redHundredsButtonTapped(_ sender: UIButton) {
        hundredsPlaceLabel.text = "2"
    }
    
    @IBAction func redTensButtonTapped(_ sender: UIButton) {
        tensPlaceLabel.text = "2"
    }
    
    @IBAction func redOnesButtonTapped(_ sender: UIButton) {
        onesPlaceLabel.text = "0 0 Ω"
    }
    
    @IBAction func orangeHundredsButtonTapped(_ sender: UIButton) {
        hundredsPlaceLabel.text = "3"
    }
    
    @IBAction func orangeTensButtonTapped(_ sender: UIButton) {
        tensPlaceLabel.text = "3"
    }
    
    @IBAction func orangeOnesButtonTapped(_ sender: UIButton) {
        onesPlaceLabel.text = "K Ω"
    }
    
    @IBAction func yellowHundredsButtonTapped(_ sender: UIButton) {
        hundredsPlaceLabel.text = "4"
    }
    
    @IBAction func yellowTensButtonTapped(_ sender: UIButton) {
        tensPlaceLabel.text = "4"
    }
    
    @IBAction func yellowOnesButtonTapped(_ sender: UIButton) {
        onesPlaceLabel.text = "0 K Ω"
    }
    
    @IBAction func greenHundredsButtonTapped(_ sender: UIButton) {
        hundredsPlaceLabel.text = "5"
    }
    
    @IBAction func greenTensButtonTapped(_ sender: UIButton) {
        tensPlaceLabel.text = "5"
    }
    
    @IBAction func greenOnesButtonTapped(_ sender: UIButton) {
        onesPlaceLabel.text = "0 0 K Ω"
    }
    
    @IBAction func blueHundredsButtonTapped(_ sender: UIButton) {
        hundredsPlaceLabel.text = "6"
    }
    @IBAction func blueTensButtonTapped(_ sender: UIButton) {
        tensPlaceLabel.text = "6"
    }
    @IBAction func blueOnesButtonTapped(_ sender: UIButton) {
        onesPlaceLabel.text = "M Ω"
    }
    @IBAction func purpleHundredsButtonTapped(_ sender: UIButton) {
        hundredsPlaceLabel.text = "7"
    }
    @IBAction func purpleTensButtonTapped(_ sender: UIButton) {
        tensPlaceLabel.text = "7"
    }
    @IBAction func purpleOnesButtonTapped(_ sender: UIButton) {
        onesPlaceLabel.text = "0 M Ω"
    }
    @IBAction func grayHundredsButtonTapped(_ sender: UIButton) {
        hundredsPlaceLabel.text = "8"
    }
    @IBAction func grayTensButtonTapped(_ sender: UIButton) {
        tensPlaceLabel.text = "8"
    }
    @IBAction func whiteHundredsButtonTapped(_ sender: UIButton) {
        hundredsPlaceLabel.text = "9"
    }
    @IBAction func whiteTensButtonTapped(_ sender: UIButton) {
        tensPlaceLabel.text = "9"
    }
    @IBAction func goldOnesButtonTapped(_ sender: UIButton) {
        var currentHundredsText = hundredsPlaceLabel.text ?? ""
        var currendTensText = tensPlaceLabel.text ?? ""
        if !currentHundredsText.contains(".") {
            hundredsPlaceLabel.text = currentHundredsText + " . "
            tensPlaceLabel.text = currendTensText + " Ω"
            onesPlaceLabel.isHidden = true
        }
    }
    @IBAction func silverOnesButtonTapped(_ sender: UIButton) {
        var currentHundredsText = hundredsPlaceLabel.text ?? ""
        var currendTensText = tensPlaceLabel.text ?? ""
        if !currentHundredsText.contains(".") {
            hundredsPlaceLabel.text = "0. " + currentHundredsText
            tensPlaceLabel.text = currendTensText + " Ω"
            onesPlaceLabel.isHidden = true
        }
    }
}

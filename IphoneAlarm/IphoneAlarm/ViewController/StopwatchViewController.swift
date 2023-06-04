//
//  StopwatchViewController.swift
//  IphoneAlarm
//
//  Created by woojin Choi on 2023/06/03.
//

import UIKit

class StopwatchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var miliSecondLabel: UILabel!
    @IBOutlet weak var lapButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var minute: Int = 0
    var second: Int = 0
    var miliSecond: Int = 0
    var timer = Timer()
    var lapTime: [String] = []
    
    var isStarted: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lapTime.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lapCell", for: indexPath)
        cell.textLabel?.text = lapTime[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    
    @objc fileprivate func count(){
        miliSecond += 1
        if (miliSecond == 60){
            second += 1
            miliSecond = 0
        }
        if(second == 60){
            minute += 1
            second = 0
            miliSecond = 0
        }
        miliSecondLabel.text = String(format: "%02d", miliSecond)
        secondLabel.text =  String(format: "%02d", second)
        minuteLabel.text =  String(format: "%02d", minute)
    }

    @IBAction func lapButtonTapped(_ sender: UIButton) {
        if(isStarted){
            let currentTime = String(format: "%02d:%02d.%02d", minute, second, miliSecond)
            lapTime.append(currentTime)
            let indexPath = IndexPath(row: lapTime.count - 1, section: 0)
            tableView.insertRows(at: [indexPath], with: .automatic)
        }else{
            minute = 0
            second = 0
            miliSecond = 0
            lapTime = []
            timer.invalidate()
            miliSecondLabel.text = String(format: "%02d", miliSecond)
            secondLabel.text =  String(format: "%02d", second)
            minuteLabel.text =  String(format: "%02d", minute)
            tableView.reloadData()
            lapButton.setTitle("랩",for: .normal)
        }
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        if(isStarted){
            isStarted = false
            lapButton.setTitle("재설정",for: .normal)
            startButton.setTitle("시작",for: .normal)
            timer.invalidate()
        }else{
            isStarted = true
            lapButton.setTitle("랩",for: .normal)
            startButton.setTitle("중단",for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(count), userInfo: nil, repeats: true)
        }
    }
    
}

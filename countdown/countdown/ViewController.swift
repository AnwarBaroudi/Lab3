//
//  ViewController.swift
//  countdown
//
//  Created by Anwar Baroudi on 2/14/17.
//  Copyright © 2017 Anwar Baroudi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
   
    @IBOutlet weak var countField: UITextField!
    
    @IBOutlet weak var timerButton: UIButton!
    
    // my wierd labels
    @IBOutlet weak var wierdLabel1: UILabel!
    @IBOutlet weak var wierdLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
//        everything below here should be in a model...
        if running == false {
            if let temp = Int(countField.text!) {
                counter = temp
                if counter <= 0 {
                    print("type in a positive number")
                } else {
                    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decrement), userInfo: nil, repeats: true)
                    running = true
                    timerButton.setTitle("Pause", for: .normal)
                }
            } else {
                print("type in a number")
            }
            
        } else {
            timer.invalidate()
            running = false
            timerButton.setTitle("Start", for: .normal)
        }
    }

    
//    everything below this point should go in a model...
    var timer = Timer()
    var counter = 0
    var running = false
    var timer2 = Timer()
    var timer3 = Timer()

    
    func decrement() {
        counter -= 1
        countField.text = String(counter)
        if counter == 0 {
            timer.invalidate()
            running = false
            timerButton.setTitle("Start", for: .normal)
            let systemSoundID: SystemSoundID = 1005
            AudioServicesPlaySystemSound (systemSoundID)
            //my wierd stuff
            wierdLabel1.text = "beep"
            timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.beep), userInfo: nil, repeats: false)
            timer3 = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(ViewController.beepOff), userInfo: nil, repeats: false)
        }
        
    }
    
    func beep() {
        wierdLabel2.text = "beep"
    }
    
    func beepOff() {
        wierdLabel1.text = ""
        wierdLabel2.text = ""
    }
    
}


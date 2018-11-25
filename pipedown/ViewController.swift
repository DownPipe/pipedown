//
//  ViewController.swift
//  pipedown
//
//  Created by Moss Prescott on 11/23/18.
//  Copyright © 2018 DownPipe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var startStopButton: UIButton?
    @IBOutlet var volumeSlider : UISlider?
    var started = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked() {
        print("Button clicked")
        
        started = !started
        
        if started {
            startStopButton?.setTitleColor(UIColor.green, for: .normal)
            startStopButton?.setTitle("Stop Test", for: .normal)
//            volumeSlider?.isUserInteractionEnabled = true
            volumeSlider?.isEnabled = true
        }
        else {
            startStopButton?.setTitleColor(UIColor.red, for: .normal)
            startStopButton?.setTitle("Start Test", for: .normal)
//            volumeSlider?.isUserInteractionEnabled = false
            volumeSlider?.isEnabled = false
        }
    }
}


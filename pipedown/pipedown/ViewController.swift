//
//  ViewController.swift
//  pipedown
//
//  Created by Moss Prescott on 11/23/18.
//  Copyright © 2018 DownPipe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var theButton: UIButton?
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
            theButton?.setTitleColor(UIColor.green, for: .normal)
            theButton?.setTitle("Stop Test", for: .normal)
        }
        else {
            theButton?.setTitleColor(UIColor.red, for: .normal)
            theButton?.setTitle("Start Test", for: .normal)
        }
    }
}


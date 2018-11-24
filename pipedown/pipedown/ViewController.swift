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
        
    }
    

}


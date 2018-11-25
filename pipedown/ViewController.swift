//
//  ViewController.swift
//  pipedown
//
//  Created by Moss Prescott on 11/23/18.
//  Copyright © 2018 DownPipe. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet var startStopButton: UIButton?
    @IBOutlet var volumeSlider : UISlider?
    var started = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupAudio()
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
            volumeSlider?.isEnabled = true
        }
        else {
            startStopButton?.setTitleColor(UIColor.red, for: .normal)
            startStopButton?.setTitle("Start Test", for: .normal)
            volumeSlider?.isEnabled = false
        }
    }
    
    private func setupAudio() {
        let engine = AVAudioEngine.init()
        let playerNode = AVAudioPlayerNode()
        print("outputs: \(playerNode.numberOfOutputs)")
        print("outputFormat[0]: \(playerNode.outputFormat(forBus: 0))")
        
        let sampleRate : Double = 44100.0
        let buffer = AVAudioPCMBuffer(pcmFormat: AVAudioFormat(standardFormatWithSampleRate: sampleRate, channelLayout: AVAudioChannelLayout(layoutTag: kAudioChannelLayoutTag_Stereo)!), frameCapacity: AVAudioFrameCount(sampleRate/10))!
        print("buffer.format \(buffer.format)")
        playerNode.scheduleBuffer(buffer, at: nil, options: .loops, completionHandler: nil)

        engine.attach(playerNode)
        engine.connect(playerNode, to: engine.mainMixerNode, format: playerNode.outputFormat(forBus: 0))
        engine.prepare()
        
        do {
            try engine.start()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}


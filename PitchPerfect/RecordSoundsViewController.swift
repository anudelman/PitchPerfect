//
//  ViewController.swift
//  PitchPerfect
//
//  Created by ASN on 3/5/20.
//  Copyright © 2020 AndrewNudelman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordingBtn: UIButton!
    @IBOutlet weak var stopRecordingBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingBtn.isEnabled = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear Called!")
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in progress..."
        stopRecordingBtn.isEnabled = true
        recordingBtn.isEnabled = false

    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordingLabel.text = "Tap to record"
        stopRecordingBtn.isEnabled = false
        recordingBtn.isEnabled = true
    }
}


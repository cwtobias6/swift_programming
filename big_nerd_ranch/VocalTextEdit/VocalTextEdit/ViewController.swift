//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Christian Tobias on 9/21/17.
//  Copyright © 2017 Christian Tobias. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var textView: NSTextView!
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
        print("The speak button was clicked")
    }
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
        print("The stop button was clicked")
    }


}


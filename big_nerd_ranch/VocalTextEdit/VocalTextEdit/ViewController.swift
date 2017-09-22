//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Christian Tobias on 9/21/17.
//  Copyright © 2017 Christian Tobias. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let speechSynthesizer = NSSpeechSynthesizer()
    
    @IBOutlet var textView: NSTextView!
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
        if let contents = textView.string, !contents.isEmpty {
            speechSynthesizer.startSpeaking(contents)
        } else {
            speechSynthesizer.startSpeaking("The document is empty.")
        }
    }
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
        speechSynthesizer.stopSpeaking()
    }
}

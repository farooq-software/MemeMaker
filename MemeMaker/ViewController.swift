//
//  ViewController.swift
//  MemeMaker
//
//  Created by ADIL FAROOQ on 11/6/19.
//  Copyright © 2019 FAROOQ SOFTWARE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        updateLabels()
    }
    
    let topChoices = [CaptionOption(emoji: "😁", caption: "What a wonderful world......"), CaptionOption(emoji: "😍", caption: "I luv you soooo much....."), CaptionOption(emoji: "🤲", caption: "I'm innocent....")]
    let bottomChoices = [CaptionOption(emoji: "👹", caption: "Shame I'm going to destroy it"), CaptionOption(emoji: "😘", caption: "I could just stalk you 'till the end of the world"), CaptionOption(emoji: "🔪", caption: "Get back here......")]
    

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    
    @IBAction func segmentedControls(_ sender: Any) {
        updateLabels()
    }
    
    func updateLabels() {
        topCaptionLabel.text = topChoices[topCaptionSegmentedControl.selectedSegmentIndex].caption
        bottomCaptionLabel.text = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex].caption
    }
    
    
    
    
    
    
    
    
    
    
    
    
}


//
//  ViewController.swift
//  Hello World
//
//  Created by user913781 on 1/29/19.
//  Copyright © 2019 Ryan Mirch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var theButton: UIButton!    
    @IBOutlet weak var theLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        let newFontSize = CGFloat(Int.random(in:1 ..< 100))
        let newXPos = CGFloat(Int.random(in:-300 ..< 0))
        let newYPos = CGFloat(Int.random(in:0 ..< 500))
        theLabel.textColor = randomColor()
        theLabel.font = theLabel.font.withSize(newFontSize)
        theLabel.frame.origin =
            CGPoint(x: newXPos, y: newYPos)
        
    }
    
    func randomColor() -> UIColor {
        let redValue = 0.01 * Float(Int.random(in:0 ..< 100))
        let blueValue = 0.01 * Float(Int.random(in:0 ..< 100))
        let greenValue = 0.01 * Float(Int.random(in:0 ..< 100))
    
        let result = UIColor(red: CGFloat(redValue),
                             green: CGFloat(greenValue),
                             blue: CGFloat(blueValue), alpha: 1)
        return result;
    }
    

}


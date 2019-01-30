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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        let FontSize = CGFloat(Int.random(in:1 ..< 200))
        let XPos = CGFloat(Int.random(in:-100 ..< 200))
        let YPos = CGFloat(Int.random(in:-400 ..< 200))
        
        let newLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
        
        newLabel.textColor = randomColor()
        newLabel.font = newLabel.font.withSize(FontSize)
        newLabel.frame.origin = CGPoint(x: XPos, y: YPos)
        newLabel.text = "Hello World"
        
        self.view.addSubview(newLabel)
        
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


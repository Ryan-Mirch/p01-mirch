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
        theLabel.textColor = randomColor()
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


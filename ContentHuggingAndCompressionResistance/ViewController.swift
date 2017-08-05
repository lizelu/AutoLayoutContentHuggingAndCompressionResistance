//
//  ViewController.swift
//  RACWithSwift
//
//  Created by Mr.LuDashi on 2017/8/4.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    
    @IBOutlet var bottomLabel1: UILabel!
    @IBOutlet var bottomLabel2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapStep1(_ sender: UIStepper) {
       self.firstLabel.text = createText(count: Int(sender.value))
    }
    
    @IBAction func tapStep2(_ sender: UIStepper) {
        self.secondLabel.text = createText(count: Int(sender.value))
    }
    
    @IBAction func tapSwitch(_ sender: UISwitch) {
        if sender.isOn {
            self.bottomLabel1.setContentCompressionResistancePriority(751, for: .horizontal)
            self.bottomLabel2.setContentCompressionResistancePriority(750, for: .horizontal)
        } else {
            self.bottomLabel1.setContentCompressionResistancePriority(750, for: .horizontal)
            self.bottomLabel2.setContentCompressionResistancePriority(751, for: .horizontal)
        }
//        self.view.setNeedsLayout()
//        self.view.layoutIfNeeded()
    }
    
    func createText(count: Int) -> String {
        var str = ""
        for _ in 0..<count {
            str.append("字")
        }
        return str
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


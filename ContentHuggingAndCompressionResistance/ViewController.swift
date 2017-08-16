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
        
        //设置 Content Hugging Priority
        self.bottomLabel1.setContentHuggingPriority(250, for: .horizontal)
        self.bottomLabel1.setContentHuggingPriority(250, for: .vertical)
        
        //设置Content Compression Resistance Priority
        self.bottomLabel1.setContentCompressionResistancePriority(750, for: .horizontal)
        self.bottomLabel1.setContentCompressionResistancePriority(750, for: .vertical)
        
        //获取相应的优先级
        print(self.bottomLabel1.contentHuggingPriority(for: .horizontal))
        print(self.bottomLabel1.contentCompressionResistancePriority(for: .vertical))
    }

    @IBAction func tapStep1(_ sender: UIStepper) {
       self.firstLabel.text = createText(count: Int(sender.value))
    }
    
    @IBAction func tapStep2(_ sender: UIStepper) {
        self.secondLabel.text = createText(count: Int(sender.value))
    }
    
    @IBAction func tapSwitch(_ sender: UISwitch) {
        if sender.isOn {
            setLabelContentCompressionResistancePriority(labe1Priority: 755)
        } else {
            setLabelContentCompressionResistancePriority(labe1Priority: 745)
        }
    }
    
    func setLabelContentCompressionResistancePriority (labe1Priority: UILayoutPriority) {
        self.bottomLabel1.setContentCompressionResistancePriority(labe1Priority, for: .horizontal)
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


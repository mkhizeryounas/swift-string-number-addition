//
//  ViewController.swift
//  StrAddition
//
//  Created by Khizer Younas on 14/05/2018.
//  Copyright © 2018 Khizer Younas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func calculate(_ sender: Any) {
        resultLabel.text = self.strAddition(str1 : num1.text!, str2 : num2.text!)
    }
    
    
    func strToNum(str: String) -> UInt32 {
        // ascii helper -> "0" = 48 && "9" = 57 | "+" = 43
        let arr = str.map { String($0) }
        var num:UInt32 = 0
        for item in arr  {
            let asciiVal = UnicodeScalar(item)!.value
            if(asciiVal < 48 || asciiVal > 57) {
                continue
            }
            num = (num*10)+(asciiVal-48)
        }
        return num
    }
    
    func strAddition(str1:String, str2:String) -> String {
        // assuming + sign does not work but += sign does work!!!
        var res:UInt32 = self.strToNum(str: str1)
        res += self.strToNum(str: str2)
        return String(res)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


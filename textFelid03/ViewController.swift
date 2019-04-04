//
//  ViewController.swift
//  textFelid03
//
//  Created by D7703_07 on 2019. 4. 4..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TextField.delegate = self as! UITextFieldDelegate
        TextField.clearButtonMode = UITextField.ViewMode.always
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let inString = TextField.text
        print(inString!)
        lbl.text = inString
        TextField.text = ""
        TextField.resignFirstResponder()
    }
    
    public func textFieldShouldReturn(_textField: UITextField) -> Bool {
        TextField.resignFirstResponder()
        TextField.backgroundColor = UIColor.yellow
        return true
    }
    
    public func textFieldShouldClear(_textField: UITextField) -> Bool{
        view.backgroundColor = UIColor.green
        return true
    }
    

}


//
//  ViewController.swift
//  Prime Number Check
//
//  Created by D7702_09 on 2018. 3. 29..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtF: UITextField!
    @IBAction func btC(_ sender: Any) {
        var number = Int (txtF.text!)
        var isPrime = true
        
        if number == 1  {
            isPrime = false
        }
        
        if number != 1 && number != 2    {
            for i in 2 ..< number!   {
                if number! % i == 0 {
                    isPrime = false
                }
            }
        }
        if isPrime == true  {
            lbl.text = "Prime Number"
            
        }else   {
            
            lbl.text = "Not Prime Number"
        }
    }
    @IBAction func btR(_ sender: Any) {
        txtF.text = ""
        lbl.text = ""
    }
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtF.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        view.endEditing(false)
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(false)
    }

}


//
//  ViewController.swift
//  PrimeNumberCheck
//
//  Created by D7703_25 on 2018. 3. 29..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var Lab: UILabel!
    @IBOutlet weak var Tex: UITextField!
    var number = 1
    var isPrime = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func BtC(_ sender: Any) {
        var prime = true
        let number = Int(Tex.text!)
        if number == 1{
            prime = false
        }
        if(number != 2 && number != 1){
            for i in 2 ..< number! {
                if number! % i == 0{
                    prime = false
                }
            }
        }
        if prime == true {
            Lab.text = "primeNumber"
        }else{
            
            Lab.text = " Not prime Number"
        }
    }
    
    @IBAction func BtR(_ sender: Any) {
        Lab.text! = ""
        Tex.text! = ""
    }
    
}


